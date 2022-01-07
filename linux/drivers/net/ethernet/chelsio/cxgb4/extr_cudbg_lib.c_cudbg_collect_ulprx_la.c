
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cudbg_ulprx_la {int size; scalar_t__ data; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct adapter {int dummy; } ;


 int ULPRX_LA_SIZE ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_ulprx_read_la (struct adapter*,int *) ;

int cudbg_collect_ulprx_la(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 struct cudbg_ulprx_la *ulprx_la_buff;
 int rc;

 rc = cudbg_get_buff(pdbg_init, dbg_buff, sizeof(struct cudbg_ulprx_la),
       &temp_buff);
 if (rc)
  return rc;

 ulprx_la_buff = (struct cudbg_ulprx_la *)temp_buff.data;
 t4_ulprx_read_la(padap, (u32 *)ulprx_la_buff->data);
 ulprx_la_buff->size = ULPRX_LA_SIZE;
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
