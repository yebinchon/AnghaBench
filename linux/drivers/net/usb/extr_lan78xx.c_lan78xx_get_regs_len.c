
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int phydev; } ;
typedef int lan78xx_regs ;


 int PHY_REG_SIZE ;

__attribute__((used)) static int lan78xx_get_regs_len(struct net_device *netdev)
{
 if (!netdev->phydev)
  return (sizeof(lan78xx_regs));
 else
  return (sizeof(lan78xx_regs) + PHY_REG_SIZE);
}
