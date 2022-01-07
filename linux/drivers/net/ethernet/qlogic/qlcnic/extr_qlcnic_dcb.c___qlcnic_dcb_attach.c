
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_dcb_mbx_params {int dummy; } ;
struct qlcnic_dcb_cfg {int dummy; } ;
struct qlcnic_dcb {int * wq; int * cfg; void* param; TYPE_2__* adapter; int aen_work; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int * create_singlethread_workqueue (char*) ;
 int destroy_workqueue (int *) ;
 int dev_err (int *,char*) ;
 int kfree (int *) ;
 void* kzalloc (int,int ) ;
 int qlcnic_dcb_aen_work ;

__attribute__((used)) static int __qlcnic_dcb_attach(struct qlcnic_dcb *dcb)
{
 int err = 0;

 INIT_DELAYED_WORK(&dcb->aen_work, qlcnic_dcb_aen_work);

 dcb->wq = create_singlethread_workqueue("qlcnic-dcb");
 if (!dcb->wq) {
  dev_err(&dcb->adapter->pdev->dev,
   "DCB workqueue allocation failed. DCB will be disabled\n");
  return -1;
 }

 dcb->cfg = kzalloc(sizeof(struct qlcnic_dcb_cfg), GFP_ATOMIC);
 if (!dcb->cfg) {
  err = -ENOMEM;
  goto out_free_wq;
 }

 dcb->param = kzalloc(sizeof(struct qlcnic_dcb_mbx_params), GFP_ATOMIC);
 if (!dcb->param) {
  err = -ENOMEM;
  goto out_free_cfg;
 }

 return 0;
out_free_cfg:
 kfree(dcb->cfg);
 dcb->cfg = ((void*)0);

out_free_wq:
 destroy_workqueue(dcb->wq);
 dcb->wq = ((void*)0);

 return err;
}
