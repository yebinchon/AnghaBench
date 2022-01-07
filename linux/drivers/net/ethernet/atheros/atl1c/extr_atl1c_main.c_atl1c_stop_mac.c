
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct atl1c_hw {int dummy; } ;


 int AT_READ_REG (struct atl1c_hw*,int ,int*) ;
 int AT_WRITE_REG (struct atl1c_hw*,int ,int) ;
 int IDLE_STATUS_RXMAC_BUSY ;
 int IDLE_STATUS_RXQ_BUSY ;
 int IDLE_STATUS_TXMAC_BUSY ;
 int IDLE_STATUS_TXQ_BUSY ;
 int MAC_CTRL_RX_EN ;
 int MAC_CTRL_TX_EN ;
 int REG_MAC_CTRL ;
 int REG_RXQ_CTRL ;
 int REG_TXQ_CTRL ;
 int RXQ_CTRL_EN ;
 int TXQ_CTRL_EN ;
 scalar_t__ atl1c_wait_until_idle (struct atl1c_hw*,int) ;

__attribute__((used)) static int atl1c_stop_mac(struct atl1c_hw *hw)
{
 u32 data;

 AT_READ_REG(hw, REG_RXQ_CTRL, &data);
 data &= ~RXQ_CTRL_EN;
 AT_WRITE_REG(hw, REG_RXQ_CTRL, data);

 AT_READ_REG(hw, REG_TXQ_CTRL, &data);
 data &= ~TXQ_CTRL_EN;
 AT_WRITE_REG(hw, REG_TXQ_CTRL, data);

 atl1c_wait_until_idle(hw, IDLE_STATUS_RXQ_BUSY | IDLE_STATUS_TXQ_BUSY);

 AT_READ_REG(hw, REG_MAC_CTRL, &data);
 data &= ~(MAC_CTRL_TX_EN | MAC_CTRL_RX_EN);
 AT_WRITE_REG(hw, REG_MAC_CTRL, data);

 return (int)atl1c_wait_until_idle(hw,
  IDLE_STATUS_TXMAC_BUSY | IDLE_STATUS_RXMAC_BUSY);
}
