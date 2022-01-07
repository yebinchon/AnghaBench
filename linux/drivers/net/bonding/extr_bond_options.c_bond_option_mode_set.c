
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tlb_dynamic_lb; scalar_t__ mode; int arp_validate; scalar_t__ miimon; scalar_t__ arp_interval; } ;
struct bonding {TYPE_1__ params; int dev; } ;
struct bond_opt_value {scalar_t__ value; scalar_t__ string; } ;


 int BOND_ARP_VALIDATE_NONE ;
 scalar_t__ BOND_DEFAULT_MIIMON ;
 scalar_t__ BOND_MODE_ALB ;
 int bond_mode_uses_arp (scalar_t__) ;
 int netdev_dbg (int ,char*,scalar_t__) ;

__attribute__((used)) static int bond_option_mode_set(struct bonding *bond,
    const struct bond_opt_value *newval)
{
 if (!bond_mode_uses_arp(newval->value)) {
  if (bond->params.arp_interval) {
   netdev_dbg(bond->dev, "%s mode is incompatible with arp monitoring, start mii monitoring\n",
       newval->string);

   bond->params.arp_interval = 0;
  }

  if (!bond->params.miimon) {

   bond->params.miimon = BOND_DEFAULT_MIIMON;
   netdev_dbg(bond->dev, "Setting MII monitoring interval to %d\n",
       bond->params.miimon);
  }
 }

 if (newval->value == BOND_MODE_ALB)
  bond->params.tlb_dynamic_lb = 1;


 bond->params.arp_validate = BOND_ARP_VALIDATE_NONE;
 bond->params.mode = newval->value;

 return 0;
}
