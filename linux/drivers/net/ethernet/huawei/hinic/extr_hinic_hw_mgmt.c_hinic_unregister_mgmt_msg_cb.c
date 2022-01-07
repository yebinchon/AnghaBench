
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinic_pf_to_mgmt {struct hinic_mgmt_cb* mgmt_cb; } ;
struct hinic_mgmt_cb {int state; int * cb; } ;
typedef enum hinic_mod_type { ____Placeholder_hinic_mod_type } hinic_mod_type ;


 int HINIC_MGMT_CB_ENABLED ;
 int HINIC_MGMT_CB_RUNNING ;
 int schedule () ;

void hinic_unregister_mgmt_msg_cb(struct hinic_pf_to_mgmt *pf_to_mgmt,
      enum hinic_mod_type mod)
{
 struct hinic_mgmt_cb *mgmt_cb = &pf_to_mgmt->mgmt_cb[mod];

 mgmt_cb->state &= ~HINIC_MGMT_CB_ENABLED;

 while (mgmt_cb->state & HINIC_MGMT_CB_RUNNING)
  schedule();

 mgmt_cb->cb = ((void*)0);
}
