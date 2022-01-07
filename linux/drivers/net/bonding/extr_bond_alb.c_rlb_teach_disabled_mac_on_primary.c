
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct slave {int dev; } ;
struct TYPE_2__ {int primary_is_promisc; scalar_t__ rlb_promisc_timeout_counter; } ;
struct bonding {TYPE_1__ alb_info; int curr_active_slave; } ;


 int alb_send_learning_packets (struct slave*,int *,int) ;
 int dev_set_promiscuity (int ,int) ;
 struct slave* rtnl_dereference (int ) ;

__attribute__((used)) static void rlb_teach_disabled_mac_on_primary(struct bonding *bond, u8 addr[])
{
 struct slave *curr_active = rtnl_dereference(bond->curr_active_slave);

 if (!curr_active)
  return;

 if (!bond->alb_info.primary_is_promisc) {
  if (!dev_set_promiscuity(curr_active->dev, 1))
   bond->alb_info.primary_is_promisc = 1;
  else
   bond->alb_info.primary_is_promisc = 0;
 }

 bond->alb_info.rlb_promisc_timeout_counter = 0;

 alb_send_learning_packets(curr_active, addr, 1);
}
