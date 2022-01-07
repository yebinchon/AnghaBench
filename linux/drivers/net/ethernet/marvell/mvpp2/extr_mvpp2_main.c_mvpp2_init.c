
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct platform_device {int dev; } ;
struct mvpp2 {scalar_t__ hw_version; scalar_t__ lms_base; TYPE_1__* aggr_txqs; scalar_t__ iface_base; } ;
struct mbus_dram_target_info {int dummy; } ;
struct TYPE_3__ {int id; int size; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ MVPP21 ;
 scalar_t__ MVPP22 ;
 scalar_t__ MVPP22_SMI_MISC_CFG_REG ;
 int MVPP22_SMI_POLLING_EN ;
 int MVPP2_AGGR_TXQ_SIZE ;
 int MVPP2_EXT_GLOBAL_CTRL_DEFAULT ;
 int MVPP2_MAX_THREADS ;
 scalar_t__ MVPP2_MNG_EXTENDED_GLOBAL_CTRL_REG ;
 scalar_t__ MVPP2_PHY_AN_CFG0_REG ;
 int MVPP2_PHY_AN_STOP_SMI0_MASK ;
 int MVPP2_TX_SNOOP_REG ;
 TYPE_1__* devm_kcalloc (int *,int,int,int ) ;
 struct mbus_dram_target_info* mv_mbus_dram_info () ;
 int mvpp22_rx_fifo_init (struct mvpp2*) ;
 int mvpp22_tx_fifo_init (struct mvpp2*) ;
 int mvpp2_aggr_txq_init (struct platform_device*,TYPE_1__*,int,struct mvpp2*) ;
 int mvpp2_axi_init (struct mvpp2*) ;
 int mvpp2_bm_init (int *,struct mvpp2*) ;
 int mvpp2_cls_init (struct mvpp2*) ;
 int mvpp2_conf_mbus_windows (struct mbus_dram_target_info const*,struct mvpp2*) ;
 int mvpp2_prs_default_init (struct platform_device*,struct mvpp2*) ;
 int mvpp2_rx_fifo_init (struct mvpp2*) ;
 int mvpp2_write (struct mvpp2*,int ,int) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int mvpp2_init(struct platform_device *pdev, struct mvpp2 *priv)
{
 const struct mbus_dram_target_info *dram_target_info;
 int err, i;
 u32 val;


 dram_target_info = mv_mbus_dram_info();
 if (dram_target_info)
  mvpp2_conf_mbus_windows(dram_target_info, priv);

 if (priv->hw_version == MVPP22)
  mvpp2_axi_init(priv);


 if (priv->hw_version == MVPP21) {
  val = readl(priv->lms_base + MVPP2_PHY_AN_CFG0_REG);
  val |= MVPP2_PHY_AN_STOP_SMI0_MASK;
  writel(val, priv->lms_base + MVPP2_PHY_AN_CFG0_REG);
 } else {
  val = readl(priv->iface_base + MVPP22_SMI_MISC_CFG_REG);
  val &= ~MVPP22_SMI_POLLING_EN;
  writel(val, priv->iface_base + MVPP22_SMI_MISC_CFG_REG);
 }


 priv->aggr_txqs = devm_kcalloc(&pdev->dev, MVPP2_MAX_THREADS,
           sizeof(*priv->aggr_txqs),
           GFP_KERNEL);
 if (!priv->aggr_txqs)
  return -ENOMEM;

 for (i = 0; i < MVPP2_MAX_THREADS; i++) {
  priv->aggr_txqs[i].id = i;
  priv->aggr_txqs[i].size = MVPP2_AGGR_TXQ_SIZE;
  err = mvpp2_aggr_txq_init(pdev, &priv->aggr_txqs[i], i, priv);
  if (err < 0)
   return err;
 }


 if (priv->hw_version == MVPP21) {
  mvpp2_rx_fifo_init(priv);
 } else {
  mvpp22_rx_fifo_init(priv);
  mvpp22_tx_fifo_init(priv);
 }

 if (priv->hw_version == MVPP21)
  writel(MVPP2_EXT_GLOBAL_CTRL_DEFAULT,
         priv->lms_base + MVPP2_MNG_EXTENDED_GLOBAL_CTRL_REG);


 mvpp2_write(priv, MVPP2_TX_SNOOP_REG, 0x1);


 err = mvpp2_bm_init(&pdev->dev, priv);
 if (err < 0)
  return err;


 err = mvpp2_prs_default_init(pdev, priv);
 if (err < 0)
  return err;


 mvpp2_cls_init(priv);

 return 0;
}
