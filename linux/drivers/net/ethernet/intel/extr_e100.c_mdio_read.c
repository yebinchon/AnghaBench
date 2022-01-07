
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int (* mdio_ctrl ) (struct nic*,int,int ,int,int ) ;} ;
struct net_device {int dummy; } ;


 int mdi_read ;
 struct nic* netdev_priv (struct net_device*) ;
 int stub1 (struct nic*,int,int ,int,int ) ;

__attribute__((used)) static int mdio_read(struct net_device *netdev, int addr, int reg)
{
 struct nic *nic = netdev_priv(netdev);
 return nic->mdio_ctrl(nic, addr, mdi_read, reg, 0);
}
