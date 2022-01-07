
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7603_dev {int dummy; } ;


 scalar_t__ MT_CLIENT_BASE_PHYS_ADDR ;
 scalar_t__ MT_CLIENT_RESET_TX ;
 int MT_CLIENT_RESET_TX_R_E_1 ;
 int MT_CLIENT_RESET_TX_R_E_1_S ;
 int MT_CLIENT_RESET_TX_R_E_2 ;
 int MT_CLIENT_RESET_TX_R_E_2_S ;
 int MT_WPDMA_GLO_CFG ;
 int MT_WPDMA_GLO_CFG_SW_RESET ;
 int mt7603_reg_map (struct mt7603_dev*,scalar_t__) ;
 int mt76_clear (struct mt7603_dev*,int ,int) ;
 int mt76_poll_msec (struct mt7603_dev*,int ,int,int,int) ;
 int mt76_set (struct mt7603_dev*,int ,int) ;

void mt7603_pse_client_reset(struct mt7603_dev *dev)
{
 u32 addr;

 addr = mt7603_reg_map(dev, MT_CLIENT_BASE_PHYS_ADDR +
       MT_CLIENT_RESET_TX);


 mt76_clear(dev, addr,
     MT_CLIENT_RESET_TX_R_E_1 |
     MT_CLIENT_RESET_TX_R_E_2 |
     MT_CLIENT_RESET_TX_R_E_1_S |
     MT_CLIENT_RESET_TX_R_E_2_S);


 mt76_set(dev, addr, MT_CLIENT_RESET_TX_R_E_1);
 mt76_poll_msec(dev, addr, MT_CLIENT_RESET_TX_R_E_1_S,
         MT_CLIENT_RESET_TX_R_E_1_S, 500);

 mt76_set(dev, addr, MT_CLIENT_RESET_TX_R_E_2);
 mt76_set(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_SW_RESET);


 mt76_poll_msec(dev, addr, MT_CLIENT_RESET_TX_R_E_2_S,
         MT_CLIENT_RESET_TX_R_E_2_S, 500);


 mt76_clear(dev, addr,
     MT_CLIENT_RESET_TX_R_E_1 |
     MT_CLIENT_RESET_TX_R_E_2);
}
