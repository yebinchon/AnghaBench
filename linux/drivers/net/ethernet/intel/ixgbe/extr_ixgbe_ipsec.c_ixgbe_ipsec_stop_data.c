
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {int link_up; struct ixgbe_hw hw; } ;


 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_LPBK ;
 int IXGBE_MACC ;
 int IXGBE_MACC_FLU ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SECRXCTRL ;
 int IXGBE_SECRXCTRL_RX_DIS ;
 int IXGBE_SECRXSTAT ;
 int IXGBE_SECRXSTAT_SECRX_RDY ;
 int IXGBE_SECTXCTRL ;
 int IXGBE_SECTXCTRL_TX_DIS ;
 int IXGBE_SECTXSTAT ;
 int IXGBE_SECTXSTAT_SECTX_RDY ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static void ixgbe_ipsec_stop_data(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 bool link = adapter->link_up;
 u32 t_rdy, r_rdy;
 u32 limit;
 u32 reg;


 reg = IXGBE_READ_REG(hw, IXGBE_SECTXCTRL);
 reg |= IXGBE_SECTXCTRL_TX_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_SECTXCTRL, reg);

 reg = IXGBE_READ_REG(hw, IXGBE_SECRXCTRL);
 reg |= IXGBE_SECRXCTRL_RX_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_SECRXCTRL, reg);





 t_rdy = IXGBE_READ_REG(hw, IXGBE_SECTXSTAT) &
  IXGBE_SECTXSTAT_SECTX_RDY;
 r_rdy = IXGBE_READ_REG(hw, IXGBE_SECRXSTAT) &
  IXGBE_SECRXSTAT_SECRX_RDY;
 if (t_rdy && r_rdy)
  return;





 if (!link) {
  reg = IXGBE_READ_REG(hw, IXGBE_MACC);
  reg |= IXGBE_MACC_FLU;
  IXGBE_WRITE_REG(hw, IXGBE_MACC, reg);

  reg = IXGBE_READ_REG(hw, IXGBE_HLREG0);
  reg |= IXGBE_HLREG0_LPBK;
  IXGBE_WRITE_REG(hw, IXGBE_HLREG0, reg);

  IXGBE_WRITE_FLUSH(hw);
  mdelay(3);
 }


 limit = 20;
 do {
  mdelay(10);
  t_rdy = IXGBE_READ_REG(hw, IXGBE_SECTXSTAT) &
   IXGBE_SECTXSTAT_SECTX_RDY;
  r_rdy = IXGBE_READ_REG(hw, IXGBE_SECRXSTAT) &
   IXGBE_SECRXSTAT_SECRX_RDY;
 } while (!(t_rdy && r_rdy) && limit--);


 if (!link) {
  reg = IXGBE_READ_REG(hw, IXGBE_MACC);
  reg &= ~IXGBE_MACC_FLU;
  IXGBE_WRITE_REG(hw, IXGBE_MACC, reg);

  reg = IXGBE_READ_REG(hw, IXGBE_HLREG0);
  reg &= ~IXGBE_HLREG0_LPBK;
  IXGBE_WRITE_REG(hw, IXGBE_HLREG0, reg);

  IXGBE_WRITE_FLUSH(hw);
 }
}
