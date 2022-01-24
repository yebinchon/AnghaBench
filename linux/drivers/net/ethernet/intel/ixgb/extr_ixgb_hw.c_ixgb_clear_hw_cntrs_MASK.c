#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct ixgb_hw {scalar_t__ adapter_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPRCH ; 
 int /*<<< orphan*/  BPRCL ; 
 int /*<<< orphan*/  BPTCH ; 
 int /*<<< orphan*/  BPTCL ; 
 int /*<<< orphan*/  CRCERRS ; 
 int /*<<< orphan*/  DC ; 
 int /*<<< orphan*/  ECBC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GORCH ; 
 int /*<<< orphan*/  GORCL ; 
 int /*<<< orphan*/  GOTCH ; 
 int /*<<< orphan*/  GOTCL ; 
 int /*<<< orphan*/  GPRCH ; 
 int /*<<< orphan*/  GPRCL ; 
 int /*<<< orphan*/  GPTCH ; 
 int /*<<< orphan*/  GPTCL ; 
 int /*<<< orphan*/  IBIC ; 
 int /*<<< orphan*/  ICBC ; 
 int /*<<< orphan*/  FUNC1 (struct ixgb_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JPRCH ; 
 int /*<<< orphan*/  JPRCL ; 
 int /*<<< orphan*/  JPTCH ; 
 int /*<<< orphan*/  JPTCL ; 
 int /*<<< orphan*/  LFC ; 
 int /*<<< orphan*/  MCFRC ; 
 int /*<<< orphan*/  MCFTC ; 
 int /*<<< orphan*/  MPC ; 
 int /*<<< orphan*/  MPRCH ; 
 int /*<<< orphan*/  MPRCL ; 
 int /*<<< orphan*/  MPTCH ; 
 int /*<<< orphan*/  MPTCL ; 
 int /*<<< orphan*/  PFRC ; 
 int /*<<< orphan*/  PFTC ; 
 int /*<<< orphan*/  PLT64C ; 
 int /*<<< orphan*/  RFC ; 
 int /*<<< orphan*/  RJC ; 
 int /*<<< orphan*/  RLEC ; 
 int /*<<< orphan*/  RNBC ; 
 int /*<<< orphan*/  ROC ; 
 int /*<<< orphan*/  RUC ; 
 int /*<<< orphan*/  TORH ; 
 int /*<<< orphan*/  TORL ; 
 int /*<<< orphan*/  TOTH ; 
 int /*<<< orphan*/  TOTL ; 
 int /*<<< orphan*/  TPRH ; 
 int /*<<< orphan*/  TPRL ; 
 int /*<<< orphan*/  TPTH ; 
 int /*<<< orphan*/  TPTL ; 
 int /*<<< orphan*/  TSCTC ; 
 int /*<<< orphan*/  TSCTFC ; 
 int /*<<< orphan*/  UPRCH ; 
 int /*<<< orphan*/  UPRCL ; 
 int /*<<< orphan*/  UPTCH ; 
 int /*<<< orphan*/  UPTCL ; 
 int /*<<< orphan*/  VPRCH ; 
 int /*<<< orphan*/  VPRCL ; 
 int /*<<< orphan*/  VPTCH ; 
 int /*<<< orphan*/  VPTCL ; 
 int /*<<< orphan*/  XOFFRXC ; 
 int /*<<< orphan*/  XOFFTXC ; 
 int /*<<< orphan*/  XONRXC ; 
 int /*<<< orphan*/  XONTXC ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(struct ixgb_hw *hw)
{
	volatile u32 temp_reg;

	FUNC0();

	/* if we are stopped or resetting exit gracefully */
	if (hw->adapter_stopped) {
		FUNC2("Exiting because the adapter is stopped!!!\n");
		return;
	}

	temp_reg = FUNC1(hw, TPRL);
	temp_reg = FUNC1(hw, TPRH);
	temp_reg = FUNC1(hw, GPRCL);
	temp_reg = FUNC1(hw, GPRCH);
	temp_reg = FUNC1(hw, BPRCL);
	temp_reg = FUNC1(hw, BPRCH);
	temp_reg = FUNC1(hw, MPRCL);
	temp_reg = FUNC1(hw, MPRCH);
	temp_reg = FUNC1(hw, UPRCL);
	temp_reg = FUNC1(hw, UPRCH);
	temp_reg = FUNC1(hw, VPRCL);
	temp_reg = FUNC1(hw, VPRCH);
	temp_reg = FUNC1(hw, JPRCL);
	temp_reg = FUNC1(hw, JPRCH);
	temp_reg = FUNC1(hw, GORCL);
	temp_reg = FUNC1(hw, GORCH);
	temp_reg = FUNC1(hw, TORL);
	temp_reg = FUNC1(hw, TORH);
	temp_reg = FUNC1(hw, RNBC);
	temp_reg = FUNC1(hw, RUC);
	temp_reg = FUNC1(hw, ROC);
	temp_reg = FUNC1(hw, RLEC);
	temp_reg = FUNC1(hw, CRCERRS);
	temp_reg = FUNC1(hw, ICBC);
	temp_reg = FUNC1(hw, ECBC);
	temp_reg = FUNC1(hw, MPC);
	temp_reg = FUNC1(hw, TPTL);
	temp_reg = FUNC1(hw, TPTH);
	temp_reg = FUNC1(hw, GPTCL);
	temp_reg = FUNC1(hw, GPTCH);
	temp_reg = FUNC1(hw, BPTCL);
	temp_reg = FUNC1(hw, BPTCH);
	temp_reg = FUNC1(hw, MPTCL);
	temp_reg = FUNC1(hw, MPTCH);
	temp_reg = FUNC1(hw, UPTCL);
	temp_reg = FUNC1(hw, UPTCH);
	temp_reg = FUNC1(hw, VPTCL);
	temp_reg = FUNC1(hw, VPTCH);
	temp_reg = FUNC1(hw, JPTCL);
	temp_reg = FUNC1(hw, JPTCH);
	temp_reg = FUNC1(hw, GOTCL);
	temp_reg = FUNC1(hw, GOTCH);
	temp_reg = FUNC1(hw, TOTL);
	temp_reg = FUNC1(hw, TOTH);
	temp_reg = FUNC1(hw, DC);
	temp_reg = FUNC1(hw, PLT64C);
	temp_reg = FUNC1(hw, TSCTC);
	temp_reg = FUNC1(hw, TSCTFC);
	temp_reg = FUNC1(hw, IBIC);
	temp_reg = FUNC1(hw, RFC);
	temp_reg = FUNC1(hw, LFC);
	temp_reg = FUNC1(hw, PFRC);
	temp_reg = FUNC1(hw, PFTC);
	temp_reg = FUNC1(hw, MCFRC);
	temp_reg = FUNC1(hw, MCFTC);
	temp_reg = FUNC1(hw, XONRXC);
	temp_reg = FUNC1(hw, XONTXC);
	temp_reg = FUNC1(hw, XOFFRXC);
	temp_reg = FUNC1(hw, XOFFTXC);
	temp_reg = FUNC1(hw, RJC);
}