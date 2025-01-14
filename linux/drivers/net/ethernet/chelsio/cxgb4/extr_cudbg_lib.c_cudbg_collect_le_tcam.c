
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cudbg_tid_data {int dummy; } ;
struct cudbg_tcam {int max_tid; int clip_start; int member_0; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_warn; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int CUDBG_STATUS_PARTIAL_DATA ;
 int CUDBG_T6_CLIP ;
 int cudbg_fill_le_tcam_info (struct adapter*,struct cudbg_tcam*) ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 scalar_t__ cudbg_is_ipv6_entry (struct cudbg_tid_data*,struct cudbg_tcam) ;
 int cudbg_read_tid (struct cudbg_init*,int,struct cudbg_tid_data*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 scalar_t__ is_t6 (int ) ;
 int memcpy (scalar_t__,struct cudbg_tcam*,int) ;

int cudbg_collect_le_tcam(struct cudbg_init *pdbg_init,
     struct cudbg_buffer *dbg_buff,
     struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 struct cudbg_tcam tcam_region = { 0 };
 struct cudbg_tid_data *tid_data;
 u32 bytes = 0;
 int rc, size;
 u32 i;

 cudbg_fill_le_tcam_info(padap, &tcam_region);

 size = sizeof(struct cudbg_tid_data) * tcam_region.max_tid;
 size += sizeof(struct cudbg_tcam);
 rc = cudbg_get_buff(pdbg_init, dbg_buff, size, &temp_buff);
 if (rc)
  return rc;

 memcpy(temp_buff.data, &tcam_region, sizeof(struct cudbg_tcam));
 bytes = sizeof(struct cudbg_tcam);
 tid_data = (struct cudbg_tid_data *)(temp_buff.data + bytes);

 for (i = 0; i < tcam_region.max_tid; ) {
  rc = cudbg_read_tid(pdbg_init, i, tid_data);
  if (rc) {
   cudbg_err->sys_warn = CUDBG_STATUS_PARTIAL_DATA;

   tcam_region.max_tid = i;
   memcpy(temp_buff.data, &tcam_region,
          sizeof(struct cudbg_tcam));
   goto out;
  }

  if (cudbg_is_ipv6_entry(tid_data, tcam_region)) {

   if (is_t6(padap->params.chip) &&
       i >= tcam_region.clip_start &&
       i < tcam_region.clip_start + CUDBG_T6_CLIP)
    i += 4;
   else
    i += 2;
  } else {
   i++;
  }

  tid_data++;
  bytes += sizeof(struct cudbg_tid_data);
 }

out:
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
