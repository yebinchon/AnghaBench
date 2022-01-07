
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {scalar_t__ wiphy; } ;
struct lbs_private {scalar_t__ wiphy_registered; struct wireless_dev* wdev; } ;


 int kfree (struct wireless_dev*) ;
 int wiphy_free (scalar_t__) ;
 int wiphy_unregister (scalar_t__) ;

void lbs_cfg_free(struct lbs_private *priv)
{
 struct wireless_dev *wdev = priv->wdev;

 if (!wdev)
  return;

 if (priv->wiphy_registered)
  wiphy_unregister(wdev->wiphy);

 if (wdev->wiphy)
  wiphy_free(wdev->wiphy);

 kfree(wdev);
}
