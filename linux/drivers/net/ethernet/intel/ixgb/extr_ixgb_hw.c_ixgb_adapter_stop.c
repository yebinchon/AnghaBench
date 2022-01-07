
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {int adapter_stopped; } ;


 int ENTER () ;
 int ICR ;
 int IMC ;
 int IXGB_CTRL0_RST ;
 int IXGB_DELAY_BEFORE_RESET ;
 int IXGB_RCTL_RXEN ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int IXGB_TCTL_TXEN ;
 int IXGB_WRITE_FLUSH (struct ixgb_hw*) ;
 int IXGB_WRITE_REG (struct ixgb_hw*,int ,int) ;
 int RCTL ;
 int TCTL ;
 int ixgb_mac_reset (struct ixgb_hw*) ;
 int msleep (int ) ;
 int pr_debug (char*) ;

bool
ixgb_adapter_stop(struct ixgb_hw *hw)
{
 u32 ctrl_reg;
 u32 icr_reg;

 ENTER();




 if (hw->adapter_stopped) {
  pr_debug("Exiting because the adapter is already stopped!!!\n");
  return 0;
 }




 hw->adapter_stopped = 1;


 pr_debug("Masking off all interrupts\n");
 IXGB_WRITE_REG(hw, IMC, 0xFFFFFFFF);





 IXGB_WRITE_REG(hw, RCTL, IXGB_READ_REG(hw, RCTL) & ~IXGB_RCTL_RXEN);
 IXGB_WRITE_REG(hw, TCTL, IXGB_READ_REG(hw, TCTL) & ~IXGB_TCTL_TXEN);
 IXGB_WRITE_FLUSH(hw);
 msleep(IXGB_DELAY_BEFORE_RESET);






 pr_debug("Issuing a global reset to MAC\n");

 ctrl_reg = ixgb_mac_reset(hw);


 pr_debug("Masking off all interrupts\n");
 IXGB_WRITE_REG(hw, IMC, 0xffffffff);


 icr_reg = IXGB_READ_REG(hw, ICR);

 return ctrl_reg & IXGB_CTRL0_RST;
}
