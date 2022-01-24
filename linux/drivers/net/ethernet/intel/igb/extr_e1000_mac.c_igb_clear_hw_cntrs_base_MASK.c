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
struct e1000_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  E1000_BPRC ; 
 int /*<<< orphan*/  E1000_BPTC ; 
 int /*<<< orphan*/  E1000_COLC ; 
 int /*<<< orphan*/  E1000_CRCERRS ; 
 int /*<<< orphan*/  E1000_DC ; 
 int /*<<< orphan*/  E1000_ECOL ; 
 int /*<<< orphan*/  E1000_FCRUC ; 
 int /*<<< orphan*/  E1000_GORCH ; 
 int /*<<< orphan*/  E1000_GORCL ; 
 int /*<<< orphan*/  E1000_GOTCH ; 
 int /*<<< orphan*/  E1000_GOTCL ; 
 int /*<<< orphan*/  E1000_GPRC ; 
 int /*<<< orphan*/  E1000_GPTC ; 
 int /*<<< orphan*/  E1000_LATECOL ; 
 int /*<<< orphan*/  E1000_MCC ; 
 int /*<<< orphan*/  E1000_MPC ; 
 int /*<<< orphan*/  E1000_MPRC ; 
 int /*<<< orphan*/  E1000_MPTC ; 
 int /*<<< orphan*/  E1000_RFC ; 
 int /*<<< orphan*/  E1000_RJC ; 
 int /*<<< orphan*/  E1000_RLEC ; 
 int /*<<< orphan*/  E1000_RNBC ; 
 int /*<<< orphan*/  E1000_ROC ; 
 int /*<<< orphan*/  E1000_RUC ; 
 int /*<<< orphan*/  E1000_SCC ; 
 int /*<<< orphan*/  E1000_SEC ; 
 int /*<<< orphan*/  E1000_SYMERRS ; 
 int /*<<< orphan*/  E1000_TORH ; 
 int /*<<< orphan*/  E1000_TORL ; 
 int /*<<< orphan*/  E1000_TOTH ; 
 int /*<<< orphan*/  E1000_TOTL ; 
 int /*<<< orphan*/  E1000_TPR ; 
 int /*<<< orphan*/  E1000_TPT ; 
 int /*<<< orphan*/  E1000_XOFFRXC ; 
 int /*<<< orphan*/  E1000_XOFFTXC ; 
 int /*<<< orphan*/  E1000_XONRXC ; 
 int /*<<< orphan*/  E1000_XONTXC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct e1000_hw *hw)
{
	FUNC0(E1000_CRCERRS);
	FUNC0(E1000_SYMERRS);
	FUNC0(E1000_MPC);
	FUNC0(E1000_SCC);
	FUNC0(E1000_ECOL);
	FUNC0(E1000_MCC);
	FUNC0(E1000_LATECOL);
	FUNC0(E1000_COLC);
	FUNC0(E1000_DC);
	FUNC0(E1000_SEC);
	FUNC0(E1000_RLEC);
	FUNC0(E1000_XONRXC);
	FUNC0(E1000_XONTXC);
	FUNC0(E1000_XOFFRXC);
	FUNC0(E1000_XOFFTXC);
	FUNC0(E1000_FCRUC);
	FUNC0(E1000_GPRC);
	FUNC0(E1000_BPRC);
	FUNC0(E1000_MPRC);
	FUNC0(E1000_GPTC);
	FUNC0(E1000_GORCL);
	FUNC0(E1000_GORCH);
	FUNC0(E1000_GOTCL);
	FUNC0(E1000_GOTCH);
	FUNC0(E1000_RNBC);
	FUNC0(E1000_RUC);
	FUNC0(E1000_RFC);
	FUNC0(E1000_ROC);
	FUNC0(E1000_RJC);
	FUNC0(E1000_TORL);
	FUNC0(E1000_TORH);
	FUNC0(E1000_TOTL);
	FUNC0(E1000_TOTH);
	FUNC0(E1000_TPR);
	FUNC0(E1000_TPT);
	FUNC0(E1000_MPTC);
	FUNC0(E1000_BPTC);
}