
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct adapter {int dummy; } ;


 int NMTUS ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_mtu_tbl (struct adapter*,int *,int *) ;

int cudbg_collect_path_mtu(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 int rc;

 rc = cudbg_get_buff(pdbg_init, dbg_buff, NMTUS * sizeof(u16),
       &temp_buff);
 if (rc)
  return rc;

 t4_read_mtu_tbl(padap, (u16 *)temp_buff.data, ((void*)0));
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
