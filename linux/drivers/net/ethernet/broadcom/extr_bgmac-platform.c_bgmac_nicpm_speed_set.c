
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_4__ {scalar_t__ nicpm_base; } ;
struct bgmac {TYPE_3__* net_dev; TYPE_1__ plat; } ;
struct TYPE_6__ {TYPE_2__* phydev; } ;
struct TYPE_5__ {int speed; } ;


 scalar_t__ NICPM_IOMUX_CTRL ;
 int NICPM_IOMUX_CTRL_INIT_VAL ;
 int NICPM_IOMUX_CTRL_SPD_1000M ;
 int NICPM_IOMUX_CTRL_SPD_100M ;
 int NICPM_IOMUX_CTRL_SPD_10M ;
 int NICPM_IOMUX_CTRL_SPD_SHIFT ;
 scalar_t__ NICPM_PADRING_CFG ;
 int NICPM_PADRING_CFG_INIT_VAL ;



 int bgmac_adjust_link (TYPE_3__*) ;
 int netdev_err (struct net_device*,char*) ;
 struct bgmac* netdev_priv (struct net_device*) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void bgmac_nicpm_speed_set(struct net_device *net_dev)
{
 struct bgmac *bgmac = netdev_priv(net_dev);
 u32 val;

 if (!bgmac->plat.nicpm_base)
  return;


 writel(NICPM_PADRING_CFG_INIT_VAL,
        bgmac->plat.nicpm_base + NICPM_PADRING_CFG);

 val = NICPM_IOMUX_CTRL_INIT_VAL;
 switch (bgmac->net_dev->phydev->speed) {
 default:
  netdev_err(net_dev, "Unsupported speed. Defaulting to 1000Mb\n");

 case 128:
  val |= NICPM_IOMUX_CTRL_SPD_1000M << NICPM_IOMUX_CTRL_SPD_SHIFT;
  break;
 case 129:
  val |= NICPM_IOMUX_CTRL_SPD_100M << NICPM_IOMUX_CTRL_SPD_SHIFT;
  break;
 case 130:
  val |= NICPM_IOMUX_CTRL_SPD_10M << NICPM_IOMUX_CTRL_SPD_SHIFT;
  break;
 }

 writel(val, bgmac->plat.nicpm_base + NICPM_IOMUX_CTRL);

 bgmac_adjust_link(bgmac->net_dev);
}
