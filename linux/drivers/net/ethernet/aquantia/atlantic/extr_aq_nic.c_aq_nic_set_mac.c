
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dev_addr; } ;
struct aq_nic_s {int aq_hw; TYPE_1__* aq_hw_ops; } ;
struct TYPE_2__ {int (* hw_set_mac_address ) (int ,int ) ;} ;


 int stub1 (int ,int ) ;

int aq_nic_set_mac(struct aq_nic_s *self, struct net_device *ndev)
{
 return self->aq_hw_ops->hw_set_mac_address(self->aq_hw, ndev->dev_addr);
}
