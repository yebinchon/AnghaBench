
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr_storage {int ss_family; int __data; } ;
struct sockaddr {int dummy; } ;
struct slave {TYPE_1__* bond; struct net_device* dev; } ;
struct net_device {int type; int dev_addr; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BOND_MODE (TYPE_1__*) ;
 scalar_t__ BOND_MODE_TLB ;
 int EOPNOTSUPP ;
 scalar_t__ dev_set_mac_address (struct net_device*,struct sockaddr*,int *) ;
 int memcpy (int ,int *,unsigned int) ;
 int slave_err (int ,struct net_device*,char*) ;

__attribute__((used)) static int alb_set_slave_mac_addr(struct slave *slave, u8 addr[],
      unsigned int len)
{
 struct net_device *dev = slave->dev;
 struct sockaddr_storage ss;

 if (BOND_MODE(slave->bond) == BOND_MODE_TLB) {
  memcpy(dev->dev_addr, addr, len);
  return 0;
 }




 memcpy(ss.__data, addr, len);
 ss.ss_family = dev->type;
 if (dev_set_mac_address(dev, (struct sockaddr *)&ss, ((void*)0))) {
  slave_err(slave->bond->dev, dev, "dev_set_mac_address on slave failed! ALB mode requires that the base driver support setting the hw address also when the network device's interface is open\n");
  return -EOPNOTSUPP;
 }
 return 0;
}
