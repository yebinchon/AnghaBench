
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hip04_priv {int group; int port; int chan; scalar_t__ base; int map; } ;


 int BIT (int) ;
 int GE_AUTO_NEG_CTL ;
 scalar_t__ GE_CF_CRC_STRIP_REG ;
 scalar_t__ GE_MAX_FRM_SIZE_REG ;
 scalar_t__ GE_RECV_CONTROL_REG ;
 int GE_RX_PAD_EN ;
 int GE_RX_STRIP_CRC ;
 int GE_RX_STRIP_PAD ;
 scalar_t__ GE_SHORT_RUNTS_THR_REG ;
 scalar_t__ GE_TRANSMIT_CONTROL_REG ;
 int GE_TX_ADD_CRC ;
 int GE_TX_AUTO_NEG ;
 scalar_t__ GE_TX_LOCAL_PAGE_REG ;
 int GE_TX_SHORT_PAD_THROUGH ;
 int GMAC_MAX_PKT_LEN ;
 int GMAC_MIN_PKT_LEN ;
 int GMAC_PPE_RX_PKT_MAX_LEN ;
 int NET_IP_ALIGN ;
 int PPE_BUF_SIZE_SHIFT ;
 int PPE_CFG_BUS_BIG_ENDIEN ;
 scalar_t__ PPE_CFG_BUS_CTRL_REG ;
 int PPE_CFG_BUS_LOCAL_REL ;
 scalar_t__ PPE_CFG_MAX_FRAME_LEN_REG ;
 scalar_t__ PPE_CFG_POOL_GRP ;
 scalar_t__ PPE_CFG_QOS_VMID_GEN ;
 int PPE_CFG_QOS_VMID_GRP_SHIFT ;
 int PPE_CFG_QOS_VMID_MODE ;
 scalar_t__ PPE_CFG_RX_BUF_SIZE ;
 int PPE_CFG_RX_CTRL_ALIGN_SHIFT ;
 scalar_t__ PPE_CFG_RX_CTRL_REG ;
 int PPE_CFG_RX_DEPTH_SHIFT ;
 int PPE_CFG_RX_FIFO_FSFU ;
 scalar_t__ PPE_CFG_RX_FIFO_SIZE ;
 int PPE_CFG_RX_PKT_ALIGN ;
 scalar_t__ PPE_CFG_RX_PKT_MODE_REG ;
 int PPE_CFG_RX_START_SHIFT ;
 scalar_t__ PPE_CFG_STS_MODE ;
 int PPE_CFG_STS_RX_PKT_CNT_RC ;
 int RX_BUF_SIZE ;
 int RX_DESC_NUM ;
 int readl_relaxed (scalar_t__) ;
 int regmap_write (int ,scalar_t__,int) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hip04_config_fifo(struct hip04_priv *priv)
{
 u32 val;

 val = readl_relaxed(priv->base + PPE_CFG_STS_MODE);
 val |= PPE_CFG_STS_RX_PKT_CNT_RC;
 writel_relaxed(val, priv->base + PPE_CFG_STS_MODE);

 val = BIT(priv->group);
 regmap_write(priv->map, priv->port * 4 + PPE_CFG_POOL_GRP, val);

 val = priv->group << PPE_CFG_QOS_VMID_GRP_SHIFT;
 val |= PPE_CFG_QOS_VMID_MODE;
 writel_relaxed(val, priv->base + PPE_CFG_QOS_VMID_GEN);

 val = RX_BUF_SIZE >> PPE_BUF_SIZE_SHIFT;
 regmap_write(priv->map, priv->port * 4 + PPE_CFG_RX_BUF_SIZE, val);

 val = RX_DESC_NUM << PPE_CFG_RX_DEPTH_SHIFT;
 val |= PPE_CFG_RX_FIFO_FSFU;
 val |= priv->chan << PPE_CFG_RX_START_SHIFT;
 regmap_write(priv->map, priv->port * 4 + PPE_CFG_RX_FIFO_SIZE, val);

 val = NET_IP_ALIGN << PPE_CFG_RX_CTRL_ALIGN_SHIFT;
 writel_relaxed(val, priv->base + PPE_CFG_RX_CTRL_REG);

 val = PPE_CFG_RX_PKT_ALIGN;
 writel_relaxed(val, priv->base + PPE_CFG_RX_PKT_MODE_REG);

 val = PPE_CFG_BUS_LOCAL_REL | PPE_CFG_BUS_BIG_ENDIEN;
 writel_relaxed(val, priv->base + PPE_CFG_BUS_CTRL_REG);

 val = GMAC_PPE_RX_PKT_MAX_LEN;
 writel_relaxed(val, priv->base + PPE_CFG_MAX_FRAME_LEN_REG);

 val = GMAC_MAX_PKT_LEN;
 writel_relaxed(val, priv->base + GE_MAX_FRM_SIZE_REG);

 val = GMAC_MIN_PKT_LEN;
 writel_relaxed(val, priv->base + GE_SHORT_RUNTS_THR_REG);

 val = readl_relaxed(priv->base + GE_TRANSMIT_CONTROL_REG);
 val |= GE_TX_AUTO_NEG | GE_TX_ADD_CRC | GE_TX_SHORT_PAD_THROUGH;
 writel_relaxed(val, priv->base + GE_TRANSMIT_CONTROL_REG);

 val = GE_RX_STRIP_CRC;
 writel_relaxed(val, priv->base + GE_CF_CRC_STRIP_REG);

 val = readl_relaxed(priv->base + GE_RECV_CONTROL_REG);
 val |= GE_RX_STRIP_PAD | GE_RX_PAD_EN;
 writel_relaxed(val, priv->base + GE_RECV_CONTROL_REG);


 val = GE_AUTO_NEG_CTL;
 writel_relaxed(val, priv->base + GE_TX_LOCAL_PAGE_REG);

}
