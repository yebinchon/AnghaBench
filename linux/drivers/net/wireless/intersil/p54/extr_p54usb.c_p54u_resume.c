
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct p54u_priv {int (* upload_fw ) (struct ieee80211_hw*) ;scalar_t__ fw; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;


 int ENODEV ;
 int stub1 (struct ieee80211_hw*) ;
 scalar_t__ unlikely (int) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int p54u_resume(struct usb_interface *intf)
{
 struct ieee80211_hw *dev = usb_get_intfdata(intf);
 struct p54u_priv *priv;

 if (!dev)
  return -ENODEV;

 priv = dev->priv;
 if (unlikely(!(priv->upload_fw && priv->fw)))
  return 0;

 return priv->upload_fw(dev);
}
