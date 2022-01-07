
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int class; } ;
struct sched_queue_entry {int cntxt_id; TYPE_1__ param; } ;
struct port_info {struct adapter* adapter; } ;
struct adapter {unsigned int pf; int mbox; } ;
typedef enum sched_bind_type { ____Placeholder_sched_bind_type } sched_bind_type ;


 int ENOTSUPP ;
 int FW_PARAMS_MNEM_DMAQ ;
 int FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH ;
 int FW_PARAMS_PARAM_X_V (int ) ;
 int FW_PARAMS_PARAM_YZ_V (int ) ;
 int FW_SCHED_CLS_NONE ;

 int t4_set_params (struct adapter*,int ,unsigned int,unsigned int,int,int*,int*) ;

__attribute__((used)) static int t4_sched_bind_unbind_op(struct port_info *pi, void *arg,
       enum sched_bind_type type, bool bind)
{
 struct adapter *adap = pi->adapter;
 u32 fw_mnem, fw_class, fw_param;
 unsigned int pf = adap->pf;
 unsigned int vf = 0;
 int err = 0;

 switch (type) {
 case 128: {
  struct sched_queue_entry *qe;

  qe = (struct sched_queue_entry *)arg;




  fw_mnem = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DMAQ) |
      FW_PARAMS_PARAM_X_V(
       FW_PARAMS_PARAM_DMAQ_EQ_SCHEDCLASS_ETH));
  fw_class = bind ? qe->param.class : FW_SCHED_CLS_NONE;
  fw_param = (fw_mnem | FW_PARAMS_PARAM_YZ_V(qe->cntxt_id));

  pf = adap->pf;
  vf = 0;
  break;
 }
 default:
  err = -ENOTSUPP;
  goto out;
 }

 err = t4_set_params(adap, adap->mbox, pf, vf, 1, &fw_param, &fw_class);

out:
 return err;
}
