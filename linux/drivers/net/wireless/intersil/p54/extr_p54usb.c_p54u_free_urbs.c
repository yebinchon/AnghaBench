
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p54u_priv {int submitted; } ;
struct ieee80211_hw {struct p54u_priv* priv; } ;


 int usb_kill_anchored_urbs (int *) ;

__attribute__((used)) static void p54u_free_urbs(struct ieee80211_hw *dev)
{
 struct p54u_priv *priv = dev->priv;
 usb_kill_anchored_urbs(&priv->submitted);
}
