
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hix5hd2_priv {scalar_t__ base; } ;


 int BIT_CRC_ERR_PASS ;
 scalar_t__ COL_SLOT_TIME ;
 scalar_t__ CONTROL_WORD ;
 scalar_t__ ENA_PMU_INT ;
 scalar_t__ IN_QUEUE_TH ;
 int MAC_MAX_FRAME_SIZE ;
 int QUEUE_TX_BQ_SHIFT ;
 scalar_t__ RAW_PMU_INT ;
 scalar_t__ REC_FILT_CONTROL ;
 int RX_BQ_INT_THRESHOLD ;
 int RX_BQ_IN_TIMEOUT ;
 scalar_t__ RX_BQ_IN_TIMEOUT_TH ;
 int RX_DESC_NUM ;
 int TX_DESC_NUM ;
 int TX_RQ_INT_THRESHOLD ;
 int TX_RQ_IN_TIMEOUT ;
 scalar_t__ TX_RQ_IN_TIMEOUT_TH ;
 int hix5hd2_set_desc_addr (struct hix5hd2_priv*) ;
 int hix5hd2_set_desc_depth (struct hix5hd2_priv*,int ,int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void hix5hd2_hw_init(struct hix5hd2_priv *priv)
{
 u32 val;


 writel_relaxed(0, priv->base + ENA_PMU_INT);
 writel_relaxed(~0, priv->base + RAW_PMU_INT);

 writel_relaxed(BIT_CRC_ERR_PASS, priv->base + REC_FILT_CONTROL);
 writel_relaxed(MAC_MAX_FRAME_SIZE, priv->base + CONTROL_WORD);
 writel_relaxed(0, priv->base + COL_SLOT_TIME);

 val = RX_BQ_INT_THRESHOLD | TX_RQ_INT_THRESHOLD << QUEUE_TX_BQ_SHIFT;
 writel_relaxed(val, priv->base + IN_QUEUE_TH);

 writel_relaxed(RX_BQ_IN_TIMEOUT, priv->base + RX_BQ_IN_TIMEOUT_TH);
 writel_relaxed(TX_RQ_IN_TIMEOUT, priv->base + TX_RQ_IN_TIMEOUT_TH);

 hix5hd2_set_desc_depth(priv, RX_DESC_NUM, TX_DESC_NUM);
 hix5hd2_set_desc_addr(priv);
}
