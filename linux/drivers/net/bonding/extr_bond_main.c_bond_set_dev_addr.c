
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_assign_type; int addr_len; int dev_addr; } ;


 int NETDEV_CHANGEADDR ;
 int NET_ADDR_STOLEN ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int dev_pre_changeaddr_notify (struct net_device*,int ,int *) ;
 int memcpy (int ,int ,int ) ;
 int slave_dbg (struct net_device*,struct net_device*,char*,struct net_device*,struct net_device*,int ) ;

__attribute__((used)) static int bond_set_dev_addr(struct net_device *bond_dev,
        struct net_device *slave_dev)
{
 int err;

 slave_dbg(bond_dev, slave_dev, "bond_dev=%p slave_dev=%p slave_dev->addr_len=%d\n",
    bond_dev, slave_dev, slave_dev->addr_len);
 err = dev_pre_changeaddr_notify(bond_dev, slave_dev->dev_addr, ((void*)0));
 if (err)
  return err;

 memcpy(bond_dev->dev_addr, slave_dev->dev_addr, slave_dev->addr_len);
 bond_dev->addr_assign_type = NET_ADDR_STOLEN;
 call_netdevice_notifiers(NETDEV_CHANGEADDR, bond_dev);
 return 0;
}
