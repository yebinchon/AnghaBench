
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct filter_entry {int tid; TYPE_1__* smt; } ;
struct adapter {int pdev_dev; } ;
struct TYPE_2__ {int idx; } ;


 int TCB_SMAC_SEL_M ;
 int TCB_SMAC_SEL_V (int ) ;
 int TCB_SMAC_SEL_W ;
 int TF_CCTRL_CWR_S ;
 int dev_err (int ,char*,int ,int) ;
 int set_tcb_field (struct adapter*,struct filter_entry*,int ,int ,int ,int ,int) ;
 int set_tcb_tflag (struct adapter*,struct filter_entry*,int ,int ,int,int) ;

__attribute__((used)) static int configure_filter_smac(struct adapter *adap, struct filter_entry *f)
{
 int err;


 err = set_tcb_tflag(adap, f, f->tid, TF_CCTRL_CWR_S, 1, 1);
 if (err)
  goto smac_err;

 err = set_tcb_field(adap, f, f->tid, TCB_SMAC_SEL_W,
       TCB_SMAC_SEL_V(TCB_SMAC_SEL_M),
       TCB_SMAC_SEL_V(f->smt->idx), 1);
 if (!err)
  return 0;

smac_err:
 dev_err(adap->pdev_dev, "filter %u smac config failed with error %u\n",
  f->tid, err);
 return err;
}
