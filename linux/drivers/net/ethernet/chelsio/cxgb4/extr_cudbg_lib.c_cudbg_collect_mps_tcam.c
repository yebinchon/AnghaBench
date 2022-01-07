
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct cudbg_mps_tcam {int dummy; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct TYPE_3__ {int mps_tcam_size; } ;
struct TYPE_4__ {TYPE_1__ arch; } ;
struct adapter {TYPE_2__ params; } ;


 int CUDBG_SYSTEM_ERROR ;
 int cudbg_collect_tcam_index (struct cudbg_init*,struct cudbg_mps_tcam*,int) ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;

int cudbg_collect_mps_tcam(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 u32 size = 0, i, n, total_size = 0;
 struct cudbg_mps_tcam *tcam;
 int rc;

 n = padap->params.arch.mps_tcam_size;
 size = sizeof(struct cudbg_mps_tcam) * n;
 rc = cudbg_get_buff(pdbg_init, dbg_buff, size, &temp_buff);
 if (rc)
  return rc;

 tcam = (struct cudbg_mps_tcam *)temp_buff.data;
 for (i = 0; i < n; i++) {
  rc = cudbg_collect_tcam_index(pdbg_init, tcam, i);
  if (rc) {
   cudbg_err->sys_err = rc;
   cudbg_put_buff(pdbg_init, &temp_buff);
   return rc;
  }
  total_size += sizeof(struct cudbg_mps_tcam);
  tcam++;
 }

 if (!total_size) {
  rc = CUDBG_SYSTEM_ERROR;
  cudbg_err->sys_err = rc;
  cudbg_put_buff(pdbg_init, &temp_buff);
  return rc;
 }
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
