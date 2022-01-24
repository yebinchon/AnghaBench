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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct sky2_hw {int dummy; } ;

/* Variables and functions */
 scalar_t__ Q_R1 ; 
 scalar_t__ Q_R2 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RB_CTRL ; 
 int /*<<< orphan*/  RB_ENA_OP_MD ; 
 int /*<<< orphan*/  RB_ENA_STFWD ; 
 int /*<<< orphan*/  RB_END ; 
 int /*<<< orphan*/  RB_RP ; 
 int /*<<< orphan*/  RB_RST_CLR ; 
 int /*<<< orphan*/  RB_RX_LTHP ; 
 int /*<<< orphan*/  RB_RX_LTPP ; 
 int /*<<< orphan*/  RB_RX_UTHP ; 
 int /*<<< orphan*/  RB_RX_UTPP ; 
 int /*<<< orphan*/  RB_START ; 
 int /*<<< orphan*/  RB_WP ; 
 int /*<<< orphan*/  FUNC1 (struct sky2_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sky2_hw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sky2_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct sky2_hw *hw, u16 q, u32 start, u32 space)
{
	u32 end;

	/* convert from K bytes to qwords used for hw register */
	start *= 1024/8;
	space *= 1024/8;
	end = start + space - 1;

	FUNC3(hw, FUNC0(q, RB_CTRL), RB_RST_CLR);
	FUNC2(hw, FUNC0(q, RB_START), start);
	FUNC2(hw, FUNC0(q, RB_END), end);
	FUNC2(hw, FUNC0(q, RB_WP), start);
	FUNC2(hw, FUNC0(q, RB_RP), start);

	if (q == Q_R1 || q == Q_R2) {
		u32 tp = space - space/4;

		/* On receive queue's set the thresholds
		 * give receiver priority when > 3/4 full
		 * send pause when down to 2K
		 */
		FUNC2(hw, FUNC0(q, RB_RX_UTHP), tp);
		FUNC2(hw, FUNC0(q, RB_RX_LTHP), space/2);

		tp = space - 8192/8;
		FUNC2(hw, FUNC0(q, RB_RX_UTPP), tp);
		FUNC2(hw, FUNC0(q, RB_RX_LTPP), space/4);
	} else {
		/* Enable store & forward on Tx queue's because
		 * Tx FIFO is only 1K on Yukon
		 */
		FUNC3(hw, FUNC0(q, RB_CTRL), RB_ENA_STFWD);
	}

	FUNC3(hw, FUNC0(q, RB_CTRL), RB_ENA_OP_MD);
	FUNC1(hw, FUNC0(q, RB_CTRL));
}