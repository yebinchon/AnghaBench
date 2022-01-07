
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_dcb {int aen_work; int wq; int state; } ;


 int QLCNIC_DCB_AEN_MODE ;
 int queue_delayed_work (int ,int *,int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_82xx_dcb_aen_handler(struct qlcnic_dcb *dcb, void *data)
{
 if (test_and_set_bit(QLCNIC_DCB_AEN_MODE, &dcb->state))
  return;

 queue_delayed_work(dcb->wq, &dcb->aen_work, 0);
}
