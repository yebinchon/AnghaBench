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
struct net_device {int dummy; } ;
struct fjes_hw {int dummy; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct ethtool_regs {int version; } ;

/* Variables and functions */
 int FJES_REGS_LEN ; 
 int /*<<< orphan*/  XSCT_CR ; 
 int /*<<< orphan*/  XSCT_CS ; 
 int /*<<< orphan*/  XSCT_DCTL ; 
 int /*<<< orphan*/  XSCT_ICTL ; 
 int /*<<< orphan*/  XSCT_IG ; 
 int /*<<< orphan*/  XSCT_IMC ; 
 int /*<<< orphan*/  XSCT_IMS ; 
 int /*<<< orphan*/  XSCT_IS ; 
 int /*<<< orphan*/  XSCT_MAX_EP ; 
 int /*<<< orphan*/  XSCT_OWNER_EPID ; 
 int /*<<< orphan*/  XSCT_REQBAH ; 
 int /*<<< orphan*/  XSCT_REQBAL ; 
 int /*<<< orphan*/  XSCT_REQBL ; 
 int /*<<< orphan*/  XSCT_RESPBAH ; 
 int /*<<< orphan*/  XSCT_RESPBAL ; 
 int /*<<< orphan*/  XSCT_RESPBL ; 
 int /*<<< orphan*/  XSCT_SHSTSAH ; 
 int /*<<< orphan*/  XSCT_SHSTSAL ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int) ; 
 struct fjes_adapter* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
			  struct ethtool_regs *regs, void *p)
{
	struct fjes_adapter *adapter = FUNC1(netdev);
	struct fjes_hw *hw = &adapter->hw;
	u32 *regs_buff = p;

	FUNC0(p, 0, FJES_REGS_LEN * sizeof(u32));

	regs->version = 1;

	/* Information registers */
	regs_buff[0] = FUNC2(XSCT_OWNER_EPID);
	regs_buff[1] = FUNC2(XSCT_MAX_EP);

	/* Device Control registers */
	regs_buff[4] = FUNC2(XSCT_DCTL);

	/* Command Control registers */
	regs_buff[8] = FUNC2(XSCT_CR);
	regs_buff[9] = FUNC2(XSCT_CS);
	regs_buff[10] = FUNC2(XSCT_SHSTSAL);
	regs_buff[11] = FUNC2(XSCT_SHSTSAH);

	regs_buff[13] = FUNC2(XSCT_REQBL);
	regs_buff[14] = FUNC2(XSCT_REQBAL);
	regs_buff[15] = FUNC2(XSCT_REQBAH);

	regs_buff[17] = FUNC2(XSCT_RESPBL);
	regs_buff[18] = FUNC2(XSCT_RESPBAL);
	regs_buff[19] = FUNC2(XSCT_RESPBAH);

	/* Interrupt Control registers */
	regs_buff[32] = FUNC2(XSCT_IS);
	regs_buff[33] = FUNC2(XSCT_IMS);
	regs_buff[34] = FUNC2(XSCT_IMC);
	regs_buff[35] = FUNC2(XSCT_IG);
	regs_buff[36] = FUNC2(XSCT_ICTL);
}