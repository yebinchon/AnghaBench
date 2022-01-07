
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev_addr; } ;
struct gbe_slave {int dummy; } ;
struct gbe_intf {struct net_device* ndev; } ;


 int GBE_REG_ADDR (struct gbe_slave*,int ,int ) ;
 int mac_hi (int ) ;
 int mac_lo (int ) ;
 int port_regs ;
 int sa_hi ;
 int sa_lo ;
 int writel (int ,int ) ;

__attribute__((used)) static void gbe_set_slave_mac(struct gbe_slave *slave,
         struct gbe_intf *gbe_intf)
{
 struct net_device *ndev = gbe_intf->ndev;

 writel(mac_hi(ndev->dev_addr), GBE_REG_ADDR(slave, port_regs, sa_hi));
 writel(mac_lo(ndev->dev_addr), GBE_REG_ADDR(slave, port_regs, sa_lo));
}
