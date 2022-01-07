
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wcn36xx {int first_boot; int dxe_base; int ccu_base; struct ieee80211_hw* hw; int smd_channel; int scan_work; TYPE_1__* dev; int scan_lock; int hal_mutex; int conf_mutex; } ;
struct TYPE_2__ {int of_node; int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int DMA_BIT_MASK (int) ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_ALEN ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int SET_IEEE80211_PERM_ADDR (struct ieee80211_hw*,int const*) ;
 int WCN36XX_DBG_MAC ;
 void* dev_get_drvdata (int ) ;
 int dma_set_mask_and_coherent (TYPE_1__*,int ) ;
 struct ieee80211_hw* ieee80211_alloc_hw (int,int *) ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_register_hw (struct ieee80211_hw*) ;
 int iounmap (int ) ;
 int mutex_init (int *) ;
 int * of_get_property (int ,char*,int*) ;
 int platform_set_drvdata (struct platform_device*,struct ieee80211_hw*) ;
 int qcom_wcnss_open_channel (void*,char*,int ,struct ieee80211_hw*) ;
 int wcn36xx_dbg (int ,char*) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_hw_scan_worker ;
 int wcn36xx_info (char*,int const*) ;
 int wcn36xx_init_ieee80211 (struct wcn36xx*) ;
 int wcn36xx_ops ;
 int wcn36xx_platform_get_resources (struct wcn36xx*,struct platform_device*) ;
 int wcn36xx_smd_rsp_process ;

__attribute__((used)) static int wcn36xx_probe(struct platform_device *pdev)
{
 struct ieee80211_hw *hw;
 struct wcn36xx *wcn;
 void *wcnss;
 int ret;
 const u8 *addr;

 wcn36xx_dbg(WCN36XX_DBG_MAC, "platform probe\n");

 wcnss = dev_get_drvdata(pdev->dev.parent);

 hw = ieee80211_alloc_hw(sizeof(struct wcn36xx), &wcn36xx_ops);
 if (!hw) {
  wcn36xx_err("failed to alloc hw\n");
  ret = -ENOMEM;
  goto out_err;
 }
 platform_set_drvdata(pdev, hw);
 wcn = hw->priv;
 wcn->hw = hw;
 wcn->dev = &pdev->dev;
 wcn->first_boot = 1;
 mutex_init(&wcn->conf_mutex);
 mutex_init(&wcn->hal_mutex);
 mutex_init(&wcn->scan_lock);

 ret = dma_set_mask_and_coherent(wcn->dev, DMA_BIT_MASK(32));
 if (ret < 0) {
  wcn36xx_err("failed to set DMA mask: %d\n", ret);
  goto out_wq;
 }

 INIT_WORK(&wcn->scan_work, wcn36xx_hw_scan_worker);

 wcn->smd_channel = qcom_wcnss_open_channel(wcnss, "WLAN_CTRL", wcn36xx_smd_rsp_process, hw);
 if (IS_ERR(wcn->smd_channel)) {
  wcn36xx_err("failed to open WLAN_CTRL channel\n");
  ret = PTR_ERR(wcn->smd_channel);
  goto out_wq;
 }

 addr = of_get_property(pdev->dev.of_node, "local-mac-address", &ret);
 if (addr && ret != ETH_ALEN) {
  wcn36xx_err("invalid local-mac-address\n");
  ret = -EINVAL;
  goto out_wq;
 } else if (addr) {
  wcn36xx_info("mac address: %pM\n", addr);
  SET_IEEE80211_PERM_ADDR(wcn->hw, addr);
 }

 ret = wcn36xx_platform_get_resources(wcn, pdev);
 if (ret)
  goto out_wq;

 wcn36xx_init_ieee80211(wcn);
 ret = ieee80211_register_hw(wcn->hw);
 if (ret)
  goto out_unmap;

 return 0;

out_unmap:
 iounmap(wcn->ccu_base);
 iounmap(wcn->dxe_base);
out_wq:
 ieee80211_free_hw(hw);
out_err:
 return ret;
}
