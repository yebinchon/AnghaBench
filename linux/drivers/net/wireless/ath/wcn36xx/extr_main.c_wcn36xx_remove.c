
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx {int hal_mutex; int ccu_base; int dxe_base; int smd_channel; int tx_rings_empty_state; int tx_enable_state; int nv; } ;
struct platform_device {int dummy; } ;
struct ieee80211_hw {struct wcn36xx* priv; } ;


 int WCN36XX_DBG_MAC ;
 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int iounmap (int ) ;
 int mutex_destroy (int *) ;
 struct ieee80211_hw* platform_get_drvdata (struct platform_device*) ;
 int qcom_smem_state_put (int ) ;
 int release_firmware (int ) ;
 int rpmsg_destroy_ept (int ) ;
 int wcn36xx_dbg (int ,char*) ;

__attribute__((used)) static int wcn36xx_remove(struct platform_device *pdev)
{
 struct ieee80211_hw *hw = platform_get_drvdata(pdev);
 struct wcn36xx *wcn = hw->priv;
 wcn36xx_dbg(WCN36XX_DBG_MAC, "platform remove\n");

 release_firmware(wcn->nv);

 ieee80211_unregister_hw(hw);

 qcom_smem_state_put(wcn->tx_enable_state);
 qcom_smem_state_put(wcn->tx_rings_empty_state);

 rpmsg_destroy_ept(wcn->smd_channel);

 iounmap(wcn->dxe_base);
 iounmap(wcn->ccu_base);

 mutex_destroy(&wcn->hal_mutex);
 ieee80211_free_hw(hw);

 return 0;
}
