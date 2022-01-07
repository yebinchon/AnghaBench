
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wireless_dev {int wiphy; } ;
struct lbs_private {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct wireless_dev* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int dev_err (struct device*,char*) ;
 int kfree (struct wireless_dev*) ;
 struct wireless_dev* kzalloc (int,int ) ;
 int lbs_cfg80211_ops ;
 int wiphy_new (int *,int) ;

struct wireless_dev *lbs_cfg_alloc(struct device *dev)
{
 int ret = 0;
 struct wireless_dev *wdev;

 wdev = kzalloc(sizeof(struct wireless_dev), GFP_KERNEL);
 if (!wdev)
  return ERR_PTR(-ENOMEM);

 wdev->wiphy = wiphy_new(&lbs_cfg80211_ops, sizeof(struct lbs_private));
 if (!wdev->wiphy) {
  dev_err(dev, "cannot allocate wiphy\n");
  ret = -ENOMEM;
  goto err_wiphy_new;
 }

 return wdev;

 err_wiphy_new:
 kfree(wdev);
 return ERR_PTR(ret);
}
