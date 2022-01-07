
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct TYPE_2__ {scalar_t__ mode; } ;
struct p54u_priv {TYPE_1__ common; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int ieee80211_restart_hw (struct ieee80211_hw*) ;
 int p54u_resume (struct usb_interface*) ;
 struct ieee80211_hw* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static int p54u_post_reset(struct usb_interface *intf)
{
 struct ieee80211_hw *dev = usb_get_intfdata(intf);
 struct p54u_priv *priv;
 int err;

 err = p54u_resume(intf);
 if (err)
  return err;


 priv = dev->priv;
 if (priv->common.mode != NL80211_IFTYPE_UNSPECIFIED)
  ieee80211_restart_hw(dev);

 return 0;
}
