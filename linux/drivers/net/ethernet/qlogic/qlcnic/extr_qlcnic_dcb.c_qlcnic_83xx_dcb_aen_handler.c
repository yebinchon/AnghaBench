
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_dcb {int aen_work; int wq; int state; } ;


 int BIT_8 ;
 int QLCNIC_DCB_AEN_MODE ;
 int QLCNIC_DCB_STATE ;
 int clear_bit (int ,int *) ;
 int queue_delayed_work (int ,int *,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_83xx_dcb_aen_handler(struct qlcnic_dcb *dcb, void *data)
{
 u32 *val = data;

 if (test_and_set_bit(QLCNIC_DCB_AEN_MODE, &dcb->state))
  return;

 if (*val & BIT_8)
  set_bit(QLCNIC_DCB_STATE, &dcb->state);
 else
  clear_bit(QLCNIC_DCB_STATE, &dcb->state);

 queue_delayed_work(dcb->wq, &dcb->aen_work, 0);
}
