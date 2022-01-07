
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dev; } ;


 int GFP_KERNEL ;
 int cfg80211_disconnected (int ,int ,int *,int ,int,int ) ;

void lbs_send_disconnect_notification(struct lbs_private *priv,
          bool locally_generated)
{
 cfg80211_disconnected(priv->dev, 0, ((void*)0), 0, locally_generated,
         GFP_KERNEL);
}
