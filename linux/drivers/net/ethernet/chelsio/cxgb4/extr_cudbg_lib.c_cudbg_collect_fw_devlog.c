
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devlog_params {scalar_t__ start; int size; int memtype; } ;
struct cudbg_init {struct adapter* adap; } ;
struct cudbg_error {int sys_err; } ;
struct cudbg_buffer {scalar_t__ data; int member_0; } ;
struct TYPE_2__ {int drv_memwin; struct devlog_params devlog; } ;
struct adapter {int win0_lock; TYPE_1__ params; } ;
typedef int __be32 ;


 int cudbg_get_buff (struct cudbg_init*,struct cudbg_buffer*,int ,struct cudbg_buffer*) ;
 int cudbg_put_buff (struct cudbg_init*,struct cudbg_buffer*) ;
 int cudbg_write_and_release_buff (struct cudbg_init*,struct cudbg_buffer*,struct cudbg_buffer*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int t4_init_devlog_params (struct adapter*) ;
 int t4_memory_rw (struct adapter*,int ,int ,scalar_t__,int ,int *,int) ;

int cudbg_collect_fw_devlog(struct cudbg_init *pdbg_init,
       struct cudbg_buffer *dbg_buff,
       struct cudbg_error *cudbg_err)
{
 struct adapter *padap = pdbg_init->adap;
 struct cudbg_buffer temp_buff = { 0 };
 struct devlog_params *dparams;
 int rc = 0;

 rc = t4_init_devlog_params(padap);
 if (rc < 0) {
  cudbg_err->sys_err = rc;
  return rc;
 }

 dparams = &padap->params.devlog;
 rc = cudbg_get_buff(pdbg_init, dbg_buff, dparams->size, &temp_buff);
 if (rc)
  return rc;


 if (dparams->start != 0) {
  spin_lock(&padap->win0_lock);
  rc = t4_memory_rw(padap, padap->params.drv_memwin,
      dparams->memtype, dparams->start,
      dparams->size,
      (__be32 *)(char *)temp_buff.data,
      1);
  spin_unlock(&padap->win0_lock);
  if (rc) {
   cudbg_err->sys_err = rc;
   cudbg_put_buff(pdbg_init, &temp_buff);
   return rc;
  }
 }
 return cudbg_write_and_release_buff(pdbg_init, &temp_buff, dbg_buff);
}
