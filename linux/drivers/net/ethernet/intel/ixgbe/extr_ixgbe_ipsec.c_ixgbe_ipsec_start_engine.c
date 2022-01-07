
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
 int IXGBE_RXTXIDX_IPS_EN ;
 int IXGBE_SECRXCTRL ;
 int IXGBE_SECTXBUFFAF ;
 int IXGBE_SECTXCTRL ;
 int IXGBE_SECTXCTRL_STORE_FORWARD ;
 int IXGBE_SECTXMINIFG ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_ipsec_stop_data (struct ixgbe_adapter*) ;

__attribute__((used)) static void ixgbe_ipsec_start_engine(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reg;

 ixgbe_ipsec_stop_data(adapter);


 reg = IXGBE_READ_REG(hw, IXGBE_SECTXMINIFG);
 reg = (reg & 0xfffffff0) | 0x3;
 IXGBE_WRITE_REG(hw, IXGBE_SECTXMINIFG, reg);





 reg = IXGBE_READ_REG(hw, IXGBE_SECTXBUFFAF);
 reg = (reg & 0xfffffc00) | 0x15;
 IXGBE_WRITE_REG(hw, IXGBE_SECTXBUFFAF, reg);


 IXGBE_WRITE_REG(hw, IXGBE_SECRXCTRL, 0);
 IXGBE_WRITE_REG(hw, IXGBE_SECTXCTRL, IXGBE_SECTXCTRL_STORE_FORWARD);


 IXGBE_WRITE_REG(hw, IXGBE_IPSTXIDX, IXGBE_RXTXIDX_IPS_EN);
 IXGBE_WRITE_REG(hw, IXGBE_IPSRXIDX, IXGBE_RXTXIDX_IPS_EN);

 IXGBE_WRITE_FLUSH(hw);
}
