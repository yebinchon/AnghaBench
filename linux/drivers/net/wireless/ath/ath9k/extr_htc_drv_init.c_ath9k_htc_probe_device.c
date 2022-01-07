
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ieee80211_hw {struct ath9k_htc_priv* priv; } ;
struct htc_target {struct ath9k_htc_priv* drv_priv; } ;
struct device {int dummy; } ;
struct ath9k_htc_priv {int wmi; struct device* dev; struct htc_target* htc; struct ieee80211_hw* hw; } ;


 int EINVAL ;
 int ENOMEM ;
 int SET_IEEE80211_DEV (struct ieee80211_hw*,struct device*) ;
 int ath9k_deinit_wmi (struct ath9k_htc_priv*) ;
 int ath9k_htc_ops ;
 int ath9k_htc_wait_for_target (struct ath9k_htc_priv*) ;
 int ath9k_init_device (struct ath9k_htc_priv*,int ,char*,int ) ;
 int ath9k_init_htc_services (struct ath9k_htc_priv*,int ,int ) ;
 int ath9k_init_wmi (struct ath9k_htc_priv*) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;

int ath9k_htc_probe_device(struct htc_target *htc_handle, struct device *dev,
      u16 devid, char *product, u32 drv_info)
{
 struct ieee80211_hw *hw;
 struct ath9k_htc_priv *priv;
 int ret;

 hw = ieee80211_alloc_hw(sizeof(struct ath9k_htc_priv), &ath9k_htc_ops);
 if (!hw)
  return -ENOMEM;

 priv = hw->priv;
 priv->hw = hw;
 priv->htc = htc_handle;
 priv->dev = dev;
 htc_handle->drv_priv = priv;
 SET_IEEE80211_DEV(hw, priv->dev);

 ret = ath9k_htc_wait_for_target(priv);
 if (ret)
  goto err_free;

 priv->wmi = ath9k_init_wmi(priv);
 if (!priv->wmi) {
  ret = -EINVAL;
  goto err_free;
 }

 ret = ath9k_init_htc_services(priv, devid, drv_info);
 if (ret)
  goto err_init;

 ret = ath9k_init_device(priv, devid, product, drv_info);
 if (ret)
  goto err_init;

 return 0;

err_init:
 ath9k_deinit_wmi(priv);
err_free:
 ieee80211_free_hw(hw);
 return ret;
}
