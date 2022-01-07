
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_cim_qcfg {int thres; int size; int base; int obq_wr; int stat; int chip; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct TYPE_2__ {int chip; } ;
struct adapter {TYPE_1__ params; } ;


 int ARRAY_SIZE (int ) ;
 int UP_IBQ_0_RDADDR_A ;
 int UP_OBQ_0_REALADDR_A ;
 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int t4_cim_read (struct adapter*,int ,int ,int ) ;
 int t4_read_cimq_cfg (struct adapter*,int ,int ,int ) ;

int cudbg_collect_cim_qcfg(struct cudbg_init *pdbg_init,
      struct cudbg_buffer *dbg_buff,
      struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 struct cudbg_cim_qcfg *cim_qcfg_data;
 int rc;

 rc = cudbg_get_buff(pdbg_init, dbg_buff, sizeof(struct cudbg_cim_qcfg),
       &temp_buff);
 if (rc)
  return rc;

 cim_qcfg_data = (struct cudbg_cim_qcfg *)temp_buff.data;
 cim_qcfg_data->chip = padap->params.chip;
 rc = t4_cim_read(padap, UP_IBQ_0_RDADDR_A,
    ARRAY_SIZE(cim_qcfg_data->stat), cim_qcfg_data->stat);
 if (rc) {
  cudbg_err->sys_err = rc;
  cudbg_put_buff(pdbg_init, &temp_buff);
  return rc;
 }

 rc = t4_cim_read(padap, UP_OBQ_0_REALADDR_A,
    ARRAY_SIZE(cim_qcfg_data->obq_wr),
    cim_qcfg_data->obq_wr);
 if (rc) {
  cudbg_err->sys_err = rc;
  cudbg_put_buff(pdbg_init, &temp_buff);
  return rc;
 }

 t4_read_cimq_cfg(padap, cim_qcfg_data->base, cim_qcfg_data->size,
    cim_qcfg_data->thres);
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
