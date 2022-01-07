
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr_storage {int ss_family; int * __data; } ;
struct sockaddr {int dummy; } ;
struct slave {TYPE_3__* dev; } ;
struct TYPE_8__ {int fail_over_mac; } ;
struct bonding {TYPE_1__ params; TYPE_2__* dev; } ;
struct TYPE_10__ {int type; int addr_len; int * dev_addr; } ;
struct TYPE_9__ {int type; int addr_len; int * dev_addr; } ;




 int MAX_ADDR_LEN ;
 struct slave* bond_get_old_active (struct bonding*,struct slave*) ;
 int bond_hw_addr_copy (int *,int *,int ) ;
 int bond_set_dev_addr (TYPE_2__*,TYPE_3__*) ;
 int dev_set_mac_address (TYPE_3__*,struct sockaddr*,int *) ;
 int netdev_err (TYPE_2__*,char*,int) ;
 int slave_err (TYPE_2__*,TYPE_3__*,char*,int) ;

__attribute__((used)) static void bond_do_fail_over_mac(struct bonding *bond,
      struct slave *new_active,
      struct slave *old_active)
{
 u8 tmp_mac[MAX_ADDR_LEN];
 struct sockaddr_storage ss;
 int rv;

 switch (bond->params.fail_over_mac) {
 case 129:
  if (new_active) {
   rv = bond_set_dev_addr(bond->dev, new_active->dev);
   if (rv)
    slave_err(bond->dev, new_active->dev, "Error %d setting bond MAC from slave\n",
       -rv);
  }
  break;
 case 128:




  if (!new_active)
   return;

  if (!old_active)
   old_active = bond_get_old_active(bond, new_active);

  if (old_active) {
   bond_hw_addr_copy(tmp_mac, new_active->dev->dev_addr,
       new_active->dev->addr_len);
   bond_hw_addr_copy(ss.__data,
       old_active->dev->dev_addr,
       old_active->dev->addr_len);
   ss.ss_family = new_active->dev->type;
  } else {
   bond_hw_addr_copy(ss.__data, bond->dev->dev_addr,
       bond->dev->addr_len);
   ss.ss_family = bond->dev->type;
  }

  rv = dev_set_mac_address(new_active->dev,
      (struct sockaddr *)&ss, ((void*)0));
  if (rv) {
   slave_err(bond->dev, new_active->dev, "Error %d setting MAC of new active slave\n",
      -rv);
   goto out;
  }

  if (!old_active)
   goto out;

  bond_hw_addr_copy(ss.__data, tmp_mac,
      new_active->dev->addr_len);
  ss.ss_family = old_active->dev->type;

  rv = dev_set_mac_address(old_active->dev,
      (struct sockaddr *)&ss, ((void*)0));
  if (rv)
   slave_err(bond->dev, old_active->dev, "Error %d setting MAC of old active slave\n",
      -rv);
out:
  break;
 default:
  netdev_err(bond->dev, "bond_do_fail_over_mac impossible: bad policy %d\n",
      bond->params.fail_over_mac);
  break;
 }

}
