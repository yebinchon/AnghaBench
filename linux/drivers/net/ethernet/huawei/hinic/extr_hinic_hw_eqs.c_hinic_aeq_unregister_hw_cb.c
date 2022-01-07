
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_hw_event_cb {int hwe_state; int * hwe_handler; } ;
struct hinic_aeqs {struct hinic_hw_event_cb* hwe_cb; } ;
typedef enum hinic_aeq_type { ____Placeholder_hinic_aeq_type } hinic_aeq_type ;


 int HINIC_EQE_ENABLED ;
 int HINIC_EQE_RUNNING ;
 int schedule () ;

void hinic_aeq_unregister_hw_cb(struct hinic_aeqs *aeqs,
    enum hinic_aeq_type event)
{
 struct hinic_hw_event_cb *hwe_cb = &aeqs->hwe_cb[event];

 hwe_cb->hwe_state &= ~HINIC_EQE_ENABLED;

 while (hwe_cb->hwe_state & HINIC_EQE_RUNNING)
  schedule();

 hwe_cb->hwe_handler = ((void*)0);
}
