
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int antenna_mask; } ;
struct mt7603_dev {void* agc3; void* agc0; TYPE_1__ mt76; } ;


 int FIELD_PREP (int,int) ;
 int MT_AGC (int) ;
 int MT_TMAC_TCR ;
 int MT_TMAC_TCR_TX_STREAMS ;
 int MT_WF_RMAC_RMCR ;
 int MT_WF_RMAC_RMCR_RX_STREAMS ;
 int MT_WF_RMAC_RMCR_SMPS_MODE ;
 int hweight8 (int) ;
 int mt76_rmw (struct mt7603_dev*,int ,int,int) ;
 int mt76_rmw_field (struct mt7603_dev*,int ,int ,int) ;
 void* mt76_rr (struct mt7603_dev*,int ) ;

__attribute__((used)) static void
mt7603_phy_init(struct mt7603_dev *dev)
{
 int rx_chains = dev->mt76.antenna_mask;
 int tx_chains = hweight8(rx_chains) - 1;

 mt76_rmw(dev, MT_WF_RMAC_RMCR,
   (MT_WF_RMAC_RMCR_SMPS_MODE |
    MT_WF_RMAC_RMCR_RX_STREAMS),
   (FIELD_PREP(MT_WF_RMAC_RMCR_SMPS_MODE, 3) |
    FIELD_PREP(MT_WF_RMAC_RMCR_RX_STREAMS, rx_chains)));

 mt76_rmw_field(dev, MT_TMAC_TCR, MT_TMAC_TCR_TX_STREAMS,
         tx_chains);

 dev->agc0 = mt76_rr(dev, MT_AGC(0));
 dev->agc3 = mt76_rr(dev, MT_AGC(3));
}
