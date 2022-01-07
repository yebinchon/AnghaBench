
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {scalar_t__ mbps; } ;
struct aq_nic_s {int flags; int ndev; TYPE_3__ link_status; TYPE_4__* aq_hw; TYPE_2__* aq_hw_ops; TYPE_1__* aq_fw_ops; } ;
struct TYPE_10__ {TYPE_3__ aq_link_status; } ;
struct TYPE_8__ {int (* hw_set_fc ) (TYPE_4__*,int ,int ) ;} ;
struct TYPE_7__ {int (* update_link_status ) (TYPE_4__*) ;int (* get_flow_control ) (TYPE_4__*,int *) ;} ;


 int AQ_CFG_DRV_NAME ;
 int AQ_NIC_FLAG_STARTED ;
 int AQ_NIC_LINK_DOWN ;
 int aq_nic_update_interrupt_moderation_settings (struct aq_nic_s*) ;
 int aq_utils_obj_clear (int *,int ) ;
 int aq_utils_obj_set (int *,int ) ;
 int netif_carrier_off (int ) ;
 scalar_t__ netif_carrier_ok (int ) ;
 int netif_carrier_on (int ) ;
 int netif_tx_disable (int ) ;
 int netif_tx_wake_all_queues (int ) ;
 int pr_info (char*,int ,scalar_t__,scalar_t__) ;
 int stub1 (TYPE_4__*) ;
 int stub2 (TYPE_4__*,int *) ;
 int stub3 (TYPE_4__*,int ,int ) ;

__attribute__((used)) static int aq_nic_update_link_status(struct aq_nic_s *self)
{
 int err = self->aq_fw_ops->update_link_status(self->aq_hw);
 u32 fc = 0;

 if (err)
  return err;

 if (self->link_status.mbps != self->aq_hw->aq_link_status.mbps) {
  pr_info("%s: link change old %d new %d\n",
   AQ_CFG_DRV_NAME, self->link_status.mbps,
   self->aq_hw->aq_link_status.mbps);
  aq_nic_update_interrupt_moderation_settings(self);





  if (self->aq_fw_ops->get_flow_control)
   self->aq_fw_ops->get_flow_control(self->aq_hw, &fc);
  if (self->aq_hw_ops->hw_set_fc)
   self->aq_hw_ops->hw_set_fc(self->aq_hw, fc, 0);
 }

 self->link_status = self->aq_hw->aq_link_status;
 if (!netif_carrier_ok(self->ndev) && self->link_status.mbps) {
  aq_utils_obj_set(&self->flags,
     AQ_NIC_FLAG_STARTED);
  aq_utils_obj_clear(&self->flags,
       AQ_NIC_LINK_DOWN);
  netif_carrier_on(self->ndev);
  netif_tx_wake_all_queues(self->ndev);
 }
 if (netif_carrier_ok(self->ndev) && !self->link_status.mbps) {
  netif_carrier_off(self->ndev);
  netif_tx_disable(self->ndev);
  aq_utils_obj_set(&self->flags, AQ_NIC_LINK_DOWN);
 }
 return 0;
}
