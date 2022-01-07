
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct b43_phy {int do_full_init; int channel; struct b43_phy_operations* ops; TYPE_4__* chandef; } ;
struct b43_wldev {TYPE_5__* wl; struct b43_phy phy; } ;
struct b43_phy_operations {int (* init ) (struct b43_wldev*) ;int (* exit ) (struct b43_wldev*) ;int (* switch_analog ) (struct b43_wldev*,int) ;} ;
struct TYPE_10__ {TYPE_2__* hw; } ;
struct TYPE_9__ {TYPE_3__* chan; } ;
struct TYPE_8__ {int hw_value; } ;
struct TYPE_6__ {TYPE_4__ chandef; } ;
struct TYPE_7__ {TYPE_1__ conf; } ;


 int b43_software_rfkill (struct b43_wldev*,int) ;
 int b43_switch_channel (struct b43_wldev*,int ) ;
 int b43err (TYPE_5__*,char*) ;
 int stub1 (struct b43_wldev*,int) ;
 int stub2 (struct b43_wldev*) ;
 int stub3 (struct b43_wldev*) ;

int b43_phy_init(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 const struct b43_phy_operations *ops = phy->ops;
 int err;




 if (!phy->chandef) {
  phy->chandef = &dev->wl->hw->conf.chandef;
  phy->channel = phy->chandef->chan->hw_value;
 }

 phy->ops->switch_analog(dev, 1);
 b43_software_rfkill(dev, 0);

 err = ops->init(dev);
 if (err) {
  b43err(dev->wl, "PHY init failed\n");
  goto err_block_rf;
 }
 phy->do_full_init = 0;

 err = b43_switch_channel(dev, phy->channel);
 if (err) {
  b43err(dev->wl, "PHY init: Channel switch to default failed\n");
  goto err_phy_exit;
 }

 return 0;

err_phy_exit:
 phy->do_full_init = 1;
 if (ops->exit)
  ops->exit(dev);
err_block_rf:
 b43_software_rfkill(dev, 1);

 return err;
}
