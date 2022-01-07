
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct s2io_nic {scalar_t__ bar0; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; int version; } ;
struct TYPE_2__ {int subsystem_device; } ;


 int XENA_REG_SPACE ;
 int memcpy (int *,int *,int) ;
 struct s2io_nic* netdev_priv (struct net_device*) ;
 int readq (scalar_t__) ;

__attribute__((used)) static void s2io_ethtool_gregs(struct net_device *dev,
          struct ethtool_regs *regs, void *space)
{
 int i;
 u64 reg;
 u8 *reg_space = (u8 *)space;
 struct s2io_nic *sp = netdev_priv(dev);

 regs->len = XENA_REG_SPACE;
 regs->version = sp->pdev->subsystem_device;

 for (i = 0; i < regs->len; i += 8) {
  reg = readq(sp->bar0 + i);
  memcpy((reg_space + i), &reg, 8);
 }
}
