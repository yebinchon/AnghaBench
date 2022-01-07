
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mtk_eth {int dev; scalar_t__ pctl; TYPE_1__* soc; int state; } ;
struct TYPE_2__ {int caps; } ;


 int GPIO_BIAS_CTRL ;
 int GPIO_DRV_SEL10 ;
 int GPIO_OD33_CTRL8 ;
 int MAC_MCR_FORCE_LINK_DOWN ;
 int MTK_CDMP_EG_CTRL ;
 int MTK_CDMQ_IG_CTRL ;
 int MTK_CDMQ_STAG_EN ;
 int MTK_FE_INT_GRP ;
 int MTK_GDMA_FWD_CFG (int) ;
 int MTK_GDMA_ICS_EN ;
 int MTK_GDMA_TCS_EN ;
 int MTK_GDMA_UCS_EN ;
 scalar_t__ MTK_HAS_CAPS (int ,int ) ;
 int MTK_HW_INIT ;
 int MTK_MAC_COUNT ;
 int MTK_MAC_MCR (int) ;
 int MTK_PDMA_DELAY_INT ;
 int MTK_PDMA_DELAY_RX_DELAY ;
 int MTK_PDMA_INT_GRP1 ;
 int MTK_PDMA_INT_GRP2 ;
 int MTK_QDMA_DELAY_INT ;
 int MTK_QDMA_INT_GRP1 ;
 int MTK_QDMA_INT_GRP2 ;
 int MTK_RST_GL ;
 int MTK_RX_DONE_INT ;
 int MTK_SOC_MT7628 ;
 int MTK_TX_DONE_INT ;
 int RSTCTRL_FE ;
 int RSTCTRL_PPE ;
 int RST_GL_PSE ;
 int dev_err (int ,char*) ;
 int device_reset (int ) ;
 int ethsys_reset (struct mtk_eth*,int ) ;
 int mtk_clk_enable (struct mtk_eth*) ;
 int mtk_r32 (struct mtk_eth*,int ) ;
 int mtk_rx_irq_disable (struct mtk_eth*,int ) ;
 int mtk_tx_irq_disable (struct mtk_eth*,int ) ;
 int mtk_w32 (struct mtk_eth*,int,int ) ;
 int pm_runtime_disable (int ) ;
 int pm_runtime_enable (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put_sync (int ) ;
 int regmap_write (scalar_t__,int ,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int mtk_hw_init(struct mtk_eth *eth)
{
 int i, val, ret;

 if (test_and_set_bit(MTK_HW_INIT, &eth->state))
  return 0;

 pm_runtime_enable(eth->dev);
 pm_runtime_get_sync(eth->dev);

 ret = mtk_clk_enable(eth);
 if (ret)
  goto err_disable_pm;

 if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
  ret = device_reset(eth->dev);
  if (ret) {
   dev_err(eth->dev, "MAC reset failed!\n");
   goto err_disable_pm;
  }


  mtk_w32(eth, MTK_PDMA_DELAY_RX_DELAY, MTK_PDMA_DELAY_INT);


  mtk_tx_irq_disable(eth, ~0);
  mtk_rx_irq_disable(eth, ~0);

  return 0;
 }


 ethsys_reset(eth, RSTCTRL_FE);
 ethsys_reset(eth, RSTCTRL_PPE);

 if (eth->pctl) {

  regmap_write(eth->pctl, GPIO_DRV_SEL10, 0xa00);


  regmap_write(eth->pctl, GPIO_OD33_CTRL8, 0x5);


  regmap_write(eth->pctl, GPIO_BIAS_CTRL, 0x0);
 }





 for (i = 0; i < MTK_MAC_COUNT; i++)
  mtk_w32(eth, MAC_MCR_FORCE_LINK_DOWN, MTK_MAC_MCR(i));




 val = mtk_r32(eth, MTK_CDMQ_IG_CTRL);
 mtk_w32(eth, val | MTK_CDMQ_STAG_EN, MTK_CDMQ_IG_CTRL);


 mtk_w32(eth, 1, MTK_CDMP_EG_CTRL);


 mtk_w32(eth, MTK_PDMA_DELAY_RX_DELAY, MTK_PDMA_DELAY_INT);


 mtk_w32(eth, 0, MTK_QDMA_DELAY_INT);
 mtk_tx_irq_disable(eth, ~0);
 mtk_rx_irq_disable(eth, ~0);
 mtk_w32(eth, RST_GL_PSE, MTK_RST_GL);
 mtk_w32(eth, 0, MTK_RST_GL);


 mtk_w32(eth, MTK_TX_DONE_INT, MTK_PDMA_INT_GRP1);
 mtk_w32(eth, MTK_RX_DONE_INT, MTK_PDMA_INT_GRP2);
 mtk_w32(eth, MTK_TX_DONE_INT, MTK_QDMA_INT_GRP1);
 mtk_w32(eth, MTK_RX_DONE_INT, MTK_QDMA_INT_GRP2);
 mtk_w32(eth, 0x21021000, MTK_FE_INT_GRP);

 for (i = 0; i < MTK_MAC_COUNT; i++) {
  u32 val = mtk_r32(eth, MTK_GDMA_FWD_CFG(i));


  val &= ~0xffff;


  val |= MTK_GDMA_ICS_EN | MTK_GDMA_TCS_EN | MTK_GDMA_UCS_EN;


  mtk_w32(eth, val, MTK_GDMA_FWD_CFG(i));
 }

 return 0;

err_disable_pm:
 pm_runtime_put_sync(eth->dev);
 pm_runtime_disable(eth->dev);

 return ret;
}
