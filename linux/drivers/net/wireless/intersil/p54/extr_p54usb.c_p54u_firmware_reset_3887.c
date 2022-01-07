
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct p54u_priv {TYPE_1__* udev; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;
struct TYPE_2__ {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int P54U_PIPE_DATA ;
 int dev_err (int *,char*,int) ;
 int kfree (int *) ;
 int * kmemdup (int ,int,int ) ;
 int p54u_bulk_msg (struct p54u_priv*,int ,int *,int) ;
 int p54u_romboot_3887 ;

__attribute__((used)) static int p54u_firmware_reset_3887(struct ieee80211_hw *dev)
{
 struct p54u_priv *priv = dev->priv;
 u8 *buf;
 int ret;

 buf = kmemdup(p54u_romboot_3887, 4, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 ret = p54u_bulk_msg(priv, P54U_PIPE_DATA,
       buf, 4);
 kfree(buf);
 if (ret)
  dev_err(&priv->udev->dev, "(p54usb) unable to jump to "
   "boot ROM (%d)!\n", ret);

 return ret;
}
