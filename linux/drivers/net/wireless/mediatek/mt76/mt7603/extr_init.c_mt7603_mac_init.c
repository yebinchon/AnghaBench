
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_6__ {size_t idx; } ;
struct TYPE_5__ {TYPE_3__ wcid; } ;
struct TYPE_4__ {int * wcid; } ;
struct mt7603_dev {TYPE_2__ global_sta; TYPE_1__ mt76; } ;


 int BIT (int) ;
 int ETH_ALEN ;
 int FIELD_PREP (int ,int) ;
 int GENMASK (int,int) ;
 int MT7603_RATE_RETRY ;
 size_t MT7603_WTBL_RESERVED ;
 int MT7603_WTBL_SIZE ;
 int MT_AGG_ARCR ;
 int MT_AGG_ARCR_RATE_DOWN_RATIO ;
 int MT_AGG_ARCR_RATE_DOWN_RATIO_EN ;
 int MT_AGG_ARCR_RATE_UP_EXTRA_TH ;
 int MT_AGG_ARCR_RTS_RATE_THR ;
 int MT_AGG_ARDCR ;
 int MT_AGG_ARUCR ;
 int MT_AGG_ARxCR_LIMIT (int) ;
 int MT_AGG_BA_SIZE_LIMIT_0 ;
 int MT_AGG_BA_SIZE_LIMIT_1 ;
 int MT_AGG_BA_SIZE_LIMIT_SHIFT ;
 int MT_AGG_CONTROL ;
 int MT_AGG_CONTROL_BAR_RATE ;
 int MT_AGG_CONTROL_CFEND_RATE ;
 int MT_AGG_CONTROL_NO_BA_AR_RULE ;
 int MT_AGG_LIMIT ;
 int MT_AGG_LIMIT_1 ;
 int MT_AGG_LIMIT_AC (int) ;
 scalar_t__ MT_AGG_PCR_RTS ;
 int MT_AGG_PCR_RTS_PKT_THR ;
 int MT_AGG_RETRY_CONTROL ;
 int MT_AGG_RETRY_CONTROL_BAR_LIMIT ;
 int MT_AGG_RETRY_CONTROL_RTS_LIMIT ;
 int MT_AGG_SIZE_LIMIT (int) ;
 int MT_CLIENT_BASE_PHYS_ADDR ;
 scalar_t__ MT_CLIENT_RXINF ;
 int MT_CLIENT_RXINF_RXSH_GROUPS ;
 int MT_DMA_DCR0 ;
 int MT_DMA_DCR0_MAX_RX_LEN ;
 int MT_DMA_DCR0_RX_VEC_DROP ;
 scalar_t__ MT_DMA_DCR1 ;
 int MT_DMA_RCFR0 ;
 int MT_DMA_TCFR0 ;
 int MT_DMA_TCFR1 ;
 int MT_DMA_TCFR_TXS_AGGR_COUNT ;
 int MT_DMA_TCFR_TXS_AGGR_TIMEOUT ;
 int MT_DMA_TCFR_TXS_BIT_MAP ;
 int MT_DMA_TMCFR0 ;
 int MT_DMA_VCFR0 ;
 scalar_t__ MT_LPON_BTEIR ;
 int MT_LPON_BTEIR_MBSS_MODE ;
 scalar_t__ MT_LPON_SBTOR (int) ;
 int MT_LPON_SBTOR_TIME_OFFSET ;
 int MT_MCU_PCIE_REMAP_1 ;
 int MT_PSE_WTBL_2_PHYS_ADDR ;
 int MT_RXREQ ;
 int MT_SEC_SCR ;
 int MT_SEC_SCR_MASK_ORDER ;
 scalar_t__ MT_TMAC_PCR ;
 int MT_TMAC_PCR_SPE_EN ;
 scalar_t__ MT_TMAC_TCR ;
 int MT_TMAC_TCR_RX_RIFS_MODE ;
 scalar_t__ MT_TXREQ ;
 int MT_TXREQ_CCA_SRC_SEL ;
 int MT_WF_RFCR1 ;
 scalar_t__ MT_WF_RMACDR ;
 int MT_WF_RMACDR_MAXLEN_20BIT ;
 int MT_WF_RMACDR_MBSSID_MASK ;
 int MT_WF_RMAC_MAXMINLEN ;
 int MT_WF_RMAC_TMR_PA ;
 scalar_t__ MT_WTBL_RMVTCR ;
 int MT_WTBL_RMVTCR_RX_MV_MODE ;
 int eth_broadcast_addr (int *) ;
 scalar_t__ mt7603_reg_map (struct mt7603_dev*,int ) ;
 int mt7603_set_tmac_template (struct mt7603_dev*) ;
 int mt7603_wtbl_clear (struct mt7603_dev*,int) ;
 int mt7603_wtbl_init (struct mt7603_dev*,size_t,int,int *) ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_rmw (struct mt7603_dev*,int ,int,int) ;
 int mt76_rmw_field (struct mt7603_dev*,scalar_t__,int ,int) ;
 int mt76_set (struct mt7603_dev*,scalar_t__,int ) ;
 int mt76_wr (struct mt7603_dev*,int ,int) ;
 int rcu_assign_pointer (int ,TYPE_3__*) ;

__attribute__((used)) static void
mt7603_mac_init(struct mt7603_dev *dev)
{
 u8 bc_addr[ETH_ALEN];
 u32 addr;
 int i;

 mt76_wr(dev, MT_AGG_BA_SIZE_LIMIT_0,
  (MT_AGG_SIZE_LIMIT(0) << 0 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
  (MT_AGG_SIZE_LIMIT(1) << 1 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
  (MT_AGG_SIZE_LIMIT(2) << 2 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
  (MT_AGG_SIZE_LIMIT(3) << 3 * MT_AGG_BA_SIZE_LIMIT_SHIFT));

 mt76_wr(dev, MT_AGG_BA_SIZE_LIMIT_1,
  (MT_AGG_SIZE_LIMIT(4) << 0 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
  (MT_AGG_SIZE_LIMIT(5) << 1 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
  (MT_AGG_SIZE_LIMIT(6) << 2 * MT_AGG_BA_SIZE_LIMIT_SHIFT) |
  (MT_AGG_SIZE_LIMIT(7) << 3 * MT_AGG_BA_SIZE_LIMIT_SHIFT));

 mt76_wr(dev, MT_AGG_LIMIT,
  FIELD_PREP(MT_AGG_LIMIT_AC(0), 24) |
  FIELD_PREP(MT_AGG_LIMIT_AC(1), 24) |
  FIELD_PREP(MT_AGG_LIMIT_AC(2), 24) |
  FIELD_PREP(MT_AGG_LIMIT_AC(3), 24));

 mt76_wr(dev, MT_AGG_LIMIT_1,
  FIELD_PREP(MT_AGG_LIMIT_AC(0), 24) |
  FIELD_PREP(MT_AGG_LIMIT_AC(1), 24) |
  FIELD_PREP(MT_AGG_LIMIT_AC(2), 24) |
  FIELD_PREP(MT_AGG_LIMIT_AC(3), 24));

 mt76_wr(dev, MT_AGG_CONTROL,
  FIELD_PREP(MT_AGG_CONTROL_BAR_RATE, 0x4b) |
  FIELD_PREP(MT_AGG_CONTROL_CFEND_RATE, 0x69) |
  MT_AGG_CONTROL_NO_BA_AR_RULE);

 mt76_wr(dev, MT_AGG_RETRY_CONTROL,
  FIELD_PREP(MT_AGG_RETRY_CONTROL_BAR_LIMIT, 1) |
  FIELD_PREP(MT_AGG_RETRY_CONTROL_RTS_LIMIT, 15));

 mt76_wr(dev, MT_DMA_DCR0, MT_DMA_DCR0_RX_VEC_DROP |
  FIELD_PREP(MT_DMA_DCR0_MAX_RX_LEN, 4096));

 mt76_rmw(dev, MT_DMA_VCFR0, BIT(0), BIT(13));
 mt76_rmw(dev, MT_DMA_TMCFR0, BIT(0) | BIT(1), BIT(13));

 mt76_clear(dev, MT_WF_RMAC_TMR_PA, BIT(31));

 mt76_set(dev, MT_WF_RMACDR, MT_WF_RMACDR_MAXLEN_20BIT);
 mt76_rmw(dev, MT_WF_RMAC_MAXMINLEN, 0xffffff, 0x19000);

 mt76_wr(dev, MT_WF_RFCR1, 0);

 mt76_set(dev, MT_TMAC_TCR, MT_TMAC_TCR_RX_RIFS_MODE);

 mt7603_set_tmac_template(dev);


 addr = mt7603_reg_map(dev, MT_CLIENT_BASE_PHYS_ADDR);
 mt76_set(dev, addr + MT_CLIENT_RXINF, MT_CLIENT_RXINF_RXSH_GROUPS);


 mt76_set(dev, MT_DMA_DCR1, GENMASK(13, 11));

 mt76_rmw_field(dev, MT_AGG_PCR_RTS, MT_AGG_PCR_RTS_PKT_THR, 3);
 mt76_set(dev, MT_TMAC_PCR, MT_TMAC_PCR_SPE_EN);


 mt76_rmw_field(dev, MT_TXREQ, MT_TXREQ_CCA_SRC_SEL, 2);

 mt76_wr(dev, MT_RXREQ, 4);


 mt76_wr(dev, MT_DMA_RCFR0, 0xc0000000);


 mt76_wr(dev, MT_DMA_TCFR0,
  FIELD_PREP(MT_DMA_TCFR_TXS_AGGR_TIMEOUT, 1) |
  MT_DMA_TCFR_TXS_AGGR_COUNT);


 mt76_wr(dev, MT_DMA_TCFR1,
  FIELD_PREP(MT_DMA_TCFR_TXS_AGGR_TIMEOUT, 1) |
  MT_DMA_TCFR_TXS_AGGR_COUNT |
  MT_DMA_TCFR_TXS_BIT_MAP);

 mt76_wr(dev, MT_MCU_PCIE_REMAP_1, MT_PSE_WTBL_2_PHYS_ADDR);

 for (i = 0; i < MT7603_WTBL_SIZE; i++)
  mt7603_wtbl_clear(dev, i);

 eth_broadcast_addr(bc_addr);
 mt7603_wtbl_init(dev, MT7603_WTBL_RESERVED, -1, bc_addr);
 dev->global_sta.wcid.idx = MT7603_WTBL_RESERVED;
 rcu_assign_pointer(dev->mt76.wcid[MT7603_WTBL_RESERVED],
      &dev->global_sta.wcid);

 mt76_rmw_field(dev, MT_LPON_BTEIR, MT_LPON_BTEIR_MBSS_MODE, 2);
 mt76_rmw_field(dev, MT_WF_RMACDR, MT_WF_RMACDR_MBSSID_MASK, 2);

 mt76_wr(dev, MT_AGG_ARUCR,
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(0), 7) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(1), 2) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(2), 2) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(3), 2) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(4), 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(5), 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(6), 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(7), 1));

 mt76_wr(dev, MT_AGG_ARDCR,
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(0), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(1), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(2), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(3), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(4), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(5), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(6), MT7603_RATE_RETRY - 1) |
  FIELD_PREP(MT_AGG_ARxCR_LIMIT(7), MT7603_RATE_RETRY - 1));

 mt76_wr(dev, MT_AGG_ARCR,
  (FIELD_PREP(MT_AGG_ARCR_RTS_RATE_THR, 2) |
   MT_AGG_ARCR_RATE_DOWN_RATIO_EN |
   FIELD_PREP(MT_AGG_ARCR_RATE_DOWN_RATIO, 1) |
   FIELD_PREP(MT_AGG_ARCR_RATE_UP_EXTRA_TH, 4)));

 mt76_set(dev, MT_WTBL_RMVTCR, MT_WTBL_RMVTCR_RX_MV_MODE);

 mt76_clear(dev, MT_SEC_SCR, MT_SEC_SCR_MASK_ORDER);
 mt76_clear(dev, MT_SEC_SCR, BIT(18));


 for (i = 0; i <= 4; i++)
  mt76_rmw_field(dev, MT_LPON_SBTOR(i), MT_LPON_SBTOR_TIME_OFFSET,
          (i + 1) * (20 + 4096));
}
