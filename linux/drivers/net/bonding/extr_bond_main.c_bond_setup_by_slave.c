
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int addr_len; int broadcast; int hard_header_len; int type; int header_ops; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void bond_setup_by_slave(struct net_device *bond_dev,
    struct net_device *slave_dev)
{
 bond_dev->header_ops = slave_dev->header_ops;

 bond_dev->type = slave_dev->type;
 bond_dev->hard_header_len = slave_dev->hard_header_len;
 bond_dev->addr_len = slave_dev->addr_len;

 memcpy(bond_dev->broadcast, slave_dev->broadcast,
  slave_dev->addr_len);
}
