
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t3cdev {int type; int ctl; int send; int ofld_dev_list; } ;
struct adapter {struct t3cdev tdev; } ;


 int INIT_LIST_HEAD (int *) ;
 int adap2type (struct adapter*) ;
 int cxgb3_set_dummy_ops (struct t3cdev*) ;
 int cxgb_offload_ctl ;
 int register_tdev (struct t3cdev*) ;
 int t3_offload_tx ;

void cxgb3_adapter_ofld(struct adapter *adapter)
{
 struct t3cdev *tdev = &adapter->tdev;

 INIT_LIST_HEAD(&tdev->ofld_dev_list);

 cxgb3_set_dummy_ops(tdev);
 tdev->send = t3_offload_tx;
 tdev->ctl = cxgb_offload_ctl;
 tdev->type = adap2type(adapter);

 register_tdev(tdev);
}
