
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {struct qlcnic_dcb* param; struct qlcnic_dcb* cfg; int * wq; int aen_work; int state; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {int * dcb; } ;


 int QLCNIC_DCB_AEN_MODE ;
 int cancel_delayed_work_sync (int *) ;
 int destroy_workqueue (int *) ;
 int kfree (struct qlcnic_dcb*) ;
 scalar_t__ test_bit (int ,int *) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void __qlcnic_dcb_free(struct qlcnic_dcb *dcb)
{
 struct qlcnic_adapter *adapter;

 if (!dcb)
  return;

 adapter = dcb->adapter;

 while (test_bit(QLCNIC_DCB_AEN_MODE, &dcb->state))
  usleep_range(10000, 11000);

 cancel_delayed_work_sync(&dcb->aen_work);

 if (dcb->wq) {
  destroy_workqueue(dcb->wq);
  dcb->wq = ((void*)0);
 }

 kfree(dcb->cfg);
 dcb->cfg = ((void*)0);
 kfree(dcb->param);
 dcb->param = ((void*)0);
 kfree(dcb);
 adapter->dcb = ((void*)0);
}
