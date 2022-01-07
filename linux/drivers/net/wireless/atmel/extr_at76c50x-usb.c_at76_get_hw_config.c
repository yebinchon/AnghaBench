
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int regulatory_domain; int mac_addr; } ;
struct TYPE_6__ {int regulatory_domain; int mac_addr; } ;
struct TYPE_5__ {int regulatory_domain; int mac_addr; } ;
union at76_hwcfg {TYPE_3__ r5; TYPE_2__ r3; TYPE_1__ i; } ;
struct at76_priv {TYPE_4__* hw; int regulatory_domain; int mac_addr; int udev; int board_type; } ;
struct TYPE_8__ {int wiphy; } ;


 int ENOMEM ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 int at76_get_hw_cfg (int ,union at76_hwcfg*,int) ;
 int at76_get_hw_cfg_intersil (int ,union at76_hwcfg*,int) ;
 scalar_t__ at76_is_503rfmd (int ) ;
 scalar_t__ at76_is_intersil (int ) ;
 int kfree (union at76_hwcfg*) ;
 union at76_hwcfg* kmalloc (int,int ) ;
 int memcpy (int ,int ,int ) ;
 int wiphy_err (int ,char*,int) ;

__attribute__((used)) static int at76_get_hw_config(struct at76_priv *priv)
{
 int ret;
 union at76_hwcfg *hwcfg = kmalloc(sizeof(*hwcfg), GFP_KERNEL);

 if (!hwcfg)
  return -ENOMEM;

 if (at76_is_intersil(priv->board_type)) {
  ret = at76_get_hw_cfg_intersil(priv->udev, hwcfg,
            sizeof(hwcfg->i));
  if (ret < 0)
   goto exit;
  memcpy(priv->mac_addr, hwcfg->i.mac_addr, ETH_ALEN);
  priv->regulatory_domain = hwcfg->i.regulatory_domain;
 } else if (at76_is_503rfmd(priv->board_type)) {
  ret = at76_get_hw_cfg(priv->udev, hwcfg, sizeof(hwcfg->r3));
  if (ret < 0)
   goto exit;
  memcpy(priv->mac_addr, hwcfg->r3.mac_addr, ETH_ALEN);
  priv->regulatory_domain = hwcfg->r3.regulatory_domain;
 } else {
  ret = at76_get_hw_cfg(priv->udev, hwcfg, sizeof(hwcfg->r5));
  if (ret < 0)
   goto exit;
  memcpy(priv->mac_addr, hwcfg->r5.mac_addr, ETH_ALEN);
  priv->regulatory_domain = hwcfg->r5.regulatory_domain;
 }

exit:
 kfree(hwcfg);
 if (ret < 0)
  wiphy_err(priv->hw->wiphy, "cannot get HW Config (error %d)\n",
     ret);

 return ret;
}
