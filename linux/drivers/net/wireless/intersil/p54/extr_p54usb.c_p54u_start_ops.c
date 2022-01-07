
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ fw_interface; struct ieee80211_hw* hw; } ;
struct p54u_priv {int (* upload_fw ) (struct ieee80211_hw*) ;TYPE_1__* udev; TYPE_2__ common; int fw; } ;
struct ieee80211_hw {int dummy; } ;
struct TYPE_6__ {scalar_t__ intf; int hw; } ;
struct TYPE_4__ {int dev; } ;


 int ENODEV ;
 int dev_err (int *,char*,int ) ;
 int p54_find_type (struct p54u_priv*) ;
 int p54_parse_firmware (struct ieee80211_hw*,int ) ;
 int p54_read_eeprom (struct ieee80211_hw*) ;
 int p54_register_common (struct ieee80211_hw*,int *) ;
 TYPE_3__* p54u_fwlist ;
 int p54u_open (struct ieee80211_hw*) ;
 int p54u_stop (struct ieee80211_hw*) ;
 int stub1 (struct ieee80211_hw*) ;

__attribute__((used)) static int p54u_start_ops(struct p54u_priv *priv)
{
 struct ieee80211_hw *dev = priv->common.hw;
 int ret;

 ret = p54_parse_firmware(dev, priv->fw);
 if (ret)
  goto err_out;

 ret = p54_find_type(priv);
 if (ret < 0)
  goto err_out;

 if (priv->common.fw_interface != p54u_fwlist[ret].intf) {
  dev_err(&priv->udev->dev, "wrong firmware, please get "
   "a firmware for \"%s\" and try again.\n",
   p54u_fwlist[ret].hw);
  ret = -ENODEV;
  goto err_out;
 }

 ret = priv->upload_fw(dev);
 if (ret)
  goto err_out;

 ret = p54u_open(dev);
 if (ret)
  goto err_out;

 ret = p54_read_eeprom(dev);
 if (ret)
  goto err_stop;

 p54u_stop(dev);

 ret = p54_register_common(dev, &priv->udev->dev);
 if (ret)
  goto err_stop;

 return 0;

err_stop:
 p54u_stop(dev);

err_out:




 return ret;
}
