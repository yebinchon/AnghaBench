
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct alx_hw {int rx_ctrl; } ;


 scalar_t__ ALX_DMA_MAC_RST_TO ;
 int ALX_MAC_CTRL ;
 int ALX_MAC_CTRL_RX_EN ;
 int ALX_MAC_CTRL_TX_EN ;
 int ALX_MAC_STS ;
 int ALX_MAC_STS_IDLE ;
 int ALX_RXQ0 ;
 int ALX_RXQ0_EN ;
 int ALX_TXQ0 ;
 int ALX_TXQ0_EN ;
 int ETIMEDOUT ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int alx_write_mem32 (struct alx_hw*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int alx_stop_mac(struct alx_hw *hw)
{
 u32 rxq, txq, val;
 u16 i;

 rxq = alx_read_mem32(hw, ALX_RXQ0);
 alx_write_mem32(hw, ALX_RXQ0, rxq & ~ALX_RXQ0_EN);
 txq = alx_read_mem32(hw, ALX_TXQ0);
 alx_write_mem32(hw, ALX_TXQ0, txq & ~ALX_TXQ0_EN);

 udelay(40);

 hw->rx_ctrl &= ~(ALX_MAC_CTRL_RX_EN | ALX_MAC_CTRL_TX_EN);
 alx_write_mem32(hw, ALX_MAC_CTRL, hw->rx_ctrl);

 for (i = 0; i < ALX_DMA_MAC_RST_TO; i++) {
  val = alx_read_mem32(hw, ALX_MAC_STS);
  if (!(val & ALX_MAC_STS_IDLE))
   return 0;
  udelay(10);
 }

 return -ETIMEDOUT;
}
