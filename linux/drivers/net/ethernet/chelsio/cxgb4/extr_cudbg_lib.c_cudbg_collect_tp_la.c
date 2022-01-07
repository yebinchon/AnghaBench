
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cudbg_tp_la {scalar_t__ data; int mode; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int dummy; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct adapter {int dummy; } ;


 int DBGLAMODE_G (int ) ;
 int TPLA_SIZE ;
 int TP_DBG_LA_CONFIG_A ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_read_la (struct adapter*,int *,int *) ;

int cudbg_collect_tp_la(struct cudbg_init *pdbg_init,
   struct cudbg_buffer *dbg_buff,
   struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 struct cudbg_tp_la *tp_la_buff;
 int size, rc;

 size = sizeof(struct cudbg_tp_la) + TPLA_SIZE * sizeof(u64);
 rc = cudbg_get_buff(pdbg_init, dbg_buff, size, &temp_buff);
 if (rc)
  return rc;

 tp_la_buff = (struct cudbg_tp_la *)temp_buff.data;
 tp_la_buff->mode = DBGLAMODE_G(t4_read_reg(padap, TP_DBG_LA_CONFIG_A));
 t4_tp_read_la(padap, (u64 *)tp_la_buff->data, ((void*)0));
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
