
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wiphy {int dummy; } ;
struct device {int dummy; } ;
struct cfg80211_ops {int dummy; } ;
struct brcmf_pub {struct brcmf_mp_device* settings; TYPE_1__* bus_if; struct cfg80211_ops* ops; struct wiphy* wiphy; } ;
struct brcmf_mp_device {int dummy; } ;
struct TYPE_2__ {struct brcmf_pub* drvr; } ;


 int ENOMEM ;
 int TRACE ;
 struct cfg80211_ops* brcmf_cfg80211_get_ops (struct brcmf_mp_device*) ;
 int brcmf_dbg (int ,char*) ;
 TYPE_1__* dev_get_drvdata (struct device*) ;
 int kfree (struct cfg80211_ops*) ;
 int set_wiphy_dev (struct wiphy*,struct device*) ;
 struct wiphy* wiphy_new (struct cfg80211_ops*,int) ;
 struct brcmf_pub* wiphy_priv (struct wiphy*) ;

int brcmf_alloc(struct device *dev, struct brcmf_mp_device *settings)
{
 struct wiphy *wiphy;
 struct cfg80211_ops *ops;
 struct brcmf_pub *drvr = ((void*)0);

 brcmf_dbg(TRACE, "Enter\n");

 ops = brcmf_cfg80211_get_ops(settings);
 if (!ops)
  return -ENOMEM;

 wiphy = wiphy_new(ops, sizeof(*drvr));
 if (!wiphy) {
  kfree(ops);
  return -ENOMEM;
 }

 set_wiphy_dev(wiphy, dev);
 drvr = wiphy_priv(wiphy);
 drvr->wiphy = wiphy;
 drvr->ops = ops;
 drvr->bus_if = dev_get_drvdata(dev);
 drvr->bus_if->drvr = drvr;
 drvr->settings = settings;

 return 0;
}
