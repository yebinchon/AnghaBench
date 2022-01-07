
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int ad_actor_system; } ;
struct bonding {int dev; TYPE_1__ params; } ;
struct bond_opt_value {int value; scalar_t__ string; } ;


 int EINVAL ;
 int ETH_ALEN ;
 int bond_3ad_update_ad_actor_settings (struct bonding*) ;
 int ether_addr_copy (int ,int *) ;
 int is_valid_ether_addr (int *) ;
 int mac_pton (scalar_t__,int *) ;
 int netdev_dbg (int ,char*,int *) ;
 int netdev_err (int ,char*) ;

__attribute__((used)) static int bond_option_ad_actor_system_set(struct bonding *bond,
        const struct bond_opt_value *newval)
{
 u8 macaddr[ETH_ALEN];
 u8 *mac;

 if (newval->string) {
  if (!mac_pton(newval->string, macaddr))
   goto err;
  mac = macaddr;
 } else {
  mac = (u8 *)&newval->value;
 }

 if (!is_valid_ether_addr(mac))
  goto err;

 netdev_dbg(bond->dev, "Setting ad_actor_system to %pM\n", mac);
 ether_addr_copy(bond->params.ad_actor_system, mac);
 bond_3ad_update_ad_actor_settings(bond);

 return 0;

err:
 netdev_err(bond->dev, "Invalid ad_actor_system MAC address.\n");
 return -EINVAL;
}
