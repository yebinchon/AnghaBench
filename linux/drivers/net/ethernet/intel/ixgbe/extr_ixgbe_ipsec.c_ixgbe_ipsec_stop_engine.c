
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_IPSRXIDX ;
 int IXGBE_IPSTXIDX ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SECRXCTRL ;
 int IXGBE_SECRXCTRL_SECRX_DIS ;
 int IXGBE_SECTXBUFFAF ;
 int IXGBE_SECTXCTRL ;
 int IXGBE_SECTXCTRL_SECTX_DIS ;
 int IXGBE_SECTXCTRL_STORE_FORWARD ;
 int IXGBE_SECTXMINIFG ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_ipsec_stop_data (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_ipsec_stop_engine(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reg;

 ixgbe_ipsec_stop_data(adapter);


 IXGBE_WRITE_REG(hw, IXGBE_IPSTXIDX, 0);
 IXGBE_WRITE_REG(hw, IXGBE_IPSRXIDX, 0);


 reg = IXGBE_READ_REG(hw, IXGBE_SECTXCTRL);
 reg |= IXGBE_SECTXCTRL_SECTX_DIS;
 reg &= ~IXGBE_SECTXCTRL_STORE_FORWARD;
 IXGBE_WRITE_REG(hw, IXGBE_SECTXCTRL, reg);

 reg = IXGBE_READ_REG(hw, IXGBE_SECRXCTRL);
 reg |= IXGBE_SECRXCTRL_SECRX_DIS;
 IXGBE_WRITE_REG(hw, IXGBE_SECRXCTRL, reg);


 IXGBE_WRITE_REG(hw, IXGBE_SECTXBUFFAF, 0x250);


 reg = IXGBE_READ_REG(hw, IXGBE_SECTXMINIFG);
 reg = (reg & 0xfffffff0) | 0x1;
 IXGBE_WRITE_REG(hw, IXGBE_SECTXMINIFG, reg);


 IXGBE_WRITE_REG(hw, IXGBE_SECTXCTRL, IXGBE_SECTXCTRL_SECTX_DIS);
 IXGBE_WRITE_REG(hw, IXGBE_SECRXCTRL, IXGBE_SECRXCTRL_SECRX_DIS);

 IXGBE_WRITE_FLUSH(hw);
}
