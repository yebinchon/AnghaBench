
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgb_hw {scalar_t__ adapter_stopped; } ;


 int BPRCH ;
 int BPRCL ;
 int BPTCH ;
 int BPTCL ;
 int CRCERRS ;
 int DC ;
 int ECBC ;
 int ENTER () ;
 int GORCH ;
 int GORCL ;
 int GOTCH ;
 int GOTCL ;
 int GPRCH ;
 int GPRCL ;
 int GPTCH ;
 int GPTCL ;
 int IBIC ;
 int ICBC ;
 int IXGB_READ_REG (struct ixgb_hw*,int ) ;
 int JPRCH ;
 int JPRCL ;
 int JPTCH ;
 int JPTCL ;
 int LFC ;
 int MCFRC ;
 int MCFTC ;
 int MPC ;
 int MPRCH ;
 int MPRCL ;
 int MPTCH ;
 int MPTCL ;
 int PFRC ;
 int PFTC ;
 int PLT64C ;
 int RFC ;
 int RJC ;
 int RLEC ;
 int RNBC ;
 int ROC ;
 int RUC ;
 int TORH ;
 int TORL ;
 int TOTH ;
 int TOTL ;
 int TPRH ;
 int TPRL ;
 int TPTH ;
 int TPTL ;
 int TSCTC ;
 int TSCTFC ;
 int UPRCH ;
 int UPRCL ;
 int UPTCH ;
 int UPTCL ;
 int VPRCH ;
 int VPRCL ;
 int VPTCH ;
 int VPTCL ;
 int XOFFRXC ;
 int XOFFTXC ;
 int XONRXC ;
 int XONTXC ;
 int pr_debug (char*) ;

__attribute__((used)) static void
ixgb_clear_hw_cntrs(struct ixgb_hw *hw)
{
 volatile u32 temp_reg;

 ENTER();


 if (hw->adapter_stopped) {
  pr_debug("Exiting because the adapter is stopped!!!\n");
  return;
 }

 temp_reg = IXGB_READ_REG(hw, TPRL);
 temp_reg = IXGB_READ_REG(hw, TPRH);
 temp_reg = IXGB_READ_REG(hw, GPRCL);
 temp_reg = IXGB_READ_REG(hw, GPRCH);
 temp_reg = IXGB_READ_REG(hw, BPRCL);
 temp_reg = IXGB_READ_REG(hw, BPRCH);
 temp_reg = IXGB_READ_REG(hw, MPRCL);
 temp_reg = IXGB_READ_REG(hw, MPRCH);
 temp_reg = IXGB_READ_REG(hw, UPRCL);
 temp_reg = IXGB_READ_REG(hw, UPRCH);
 temp_reg = IXGB_READ_REG(hw, VPRCL);
 temp_reg = IXGB_READ_REG(hw, VPRCH);
 temp_reg = IXGB_READ_REG(hw, JPRCL);
 temp_reg = IXGB_READ_REG(hw, JPRCH);
 temp_reg = IXGB_READ_REG(hw, GORCL);
 temp_reg = IXGB_READ_REG(hw, GORCH);
 temp_reg = IXGB_READ_REG(hw, TORL);
 temp_reg = IXGB_READ_REG(hw, TORH);
 temp_reg = IXGB_READ_REG(hw, RNBC);
 temp_reg = IXGB_READ_REG(hw, RUC);
 temp_reg = IXGB_READ_REG(hw, ROC);
 temp_reg = IXGB_READ_REG(hw, RLEC);
 temp_reg = IXGB_READ_REG(hw, CRCERRS);
 temp_reg = IXGB_READ_REG(hw, ICBC);
 temp_reg = IXGB_READ_REG(hw, ECBC);
 temp_reg = IXGB_READ_REG(hw, MPC);
 temp_reg = IXGB_READ_REG(hw, TPTL);
 temp_reg = IXGB_READ_REG(hw, TPTH);
 temp_reg = IXGB_READ_REG(hw, GPTCL);
 temp_reg = IXGB_READ_REG(hw, GPTCH);
 temp_reg = IXGB_READ_REG(hw, BPTCL);
 temp_reg = IXGB_READ_REG(hw, BPTCH);
 temp_reg = IXGB_READ_REG(hw, MPTCL);
 temp_reg = IXGB_READ_REG(hw, MPTCH);
 temp_reg = IXGB_READ_REG(hw, UPTCL);
 temp_reg = IXGB_READ_REG(hw, UPTCH);
 temp_reg = IXGB_READ_REG(hw, VPTCL);
 temp_reg = IXGB_READ_REG(hw, VPTCH);
 temp_reg = IXGB_READ_REG(hw, JPTCL);
 temp_reg = IXGB_READ_REG(hw, JPTCH);
 temp_reg = IXGB_READ_REG(hw, GOTCL);
 temp_reg = IXGB_READ_REG(hw, GOTCH);
 temp_reg = IXGB_READ_REG(hw, TOTL);
 temp_reg = IXGB_READ_REG(hw, TOTH);
 temp_reg = IXGB_READ_REG(hw, DC);
 temp_reg = IXGB_READ_REG(hw, PLT64C);
 temp_reg = IXGB_READ_REG(hw, TSCTC);
 temp_reg = IXGB_READ_REG(hw, TSCTFC);
 temp_reg = IXGB_READ_REG(hw, IBIC);
 temp_reg = IXGB_READ_REG(hw, RFC);
 temp_reg = IXGB_READ_REG(hw, LFC);
 temp_reg = IXGB_READ_REG(hw, PFRC);
 temp_reg = IXGB_READ_REG(hw, PFTC);
 temp_reg = IXGB_READ_REG(hw, MCFRC);
 temp_reg = IXGB_READ_REG(hw, MCFTC);
 temp_reg = IXGB_READ_REG(hw, XONRXC);
 temp_reg = IXGB_READ_REG(hw, XONTXC);
 temp_reg = IXGB_READ_REG(hw, XOFFRXC);
 temp_reg = IXGB_READ_REG(hw, XOFFTXC);
 temp_reg = IXGB_READ_REG(hw, RJC);
}
