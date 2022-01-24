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
typedef  int u16 ;
struct cas {int phy_addr; scalar_t__ regs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int MIF_FRAME_DATA_MASK ; 
 int MIF_FRAME_OP_READ ; 
 int /*<<< orphan*/  MIF_FRAME_PHY_ADDR ; 
 int /*<<< orphan*/  MIF_FRAME_REG_ADDR ; 
 int MIF_FRAME_ST ; 
 int MIF_FRAME_TURN_AROUND_LSB ; 
 int MIF_FRAME_TURN_AROUND_MSB ; 
 scalar_t__ REG_MIF_FRAME ; 
 int STOP_TRIES_PHY ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static u16 FUNC4(struct cas *cp, int reg)
{
	u32 cmd;
	int limit = STOP_TRIES_PHY;

	cmd = MIF_FRAME_ST | MIF_FRAME_OP_READ;
	cmd |= FUNC0(MIF_FRAME_PHY_ADDR, cp->phy_addr);
	cmd |= FUNC0(MIF_FRAME_REG_ADDR, reg);
	cmd |= MIF_FRAME_TURN_AROUND_MSB;
	FUNC3(cmd, cp->regs + REG_MIF_FRAME);

	/* poll for completion */
	while (limit-- > 0) {
		FUNC2(10);
		cmd = FUNC1(cp->regs + REG_MIF_FRAME);
		if (cmd & MIF_FRAME_TURN_AROUND_LSB)
			return cmd & MIF_FRAME_DATA_MASK;
	}
	return 0xFFFF; /* -1 */
}