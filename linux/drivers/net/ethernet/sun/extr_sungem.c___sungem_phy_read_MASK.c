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
struct gem {scalar_t__ regs; } ;

/* Variables and functions */
 scalar_t__ MIF_FRAME ; 
 int MIF_FRAME_DATA ; 
 int MIF_FRAME_PHYAD ; 
 int MIF_FRAME_REGAD ; 
 int MIF_FRAME_TALSB ; 
 int MIF_FRAME_TAMSB ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static u16 FUNC3(struct gem *gp, int phy_addr, int reg)
{
	u32 cmd;
	int limit = 10000;

	cmd  = (1 << 30);
	cmd |= (2 << 28);
	cmd |= (phy_addr << 23) & MIF_FRAME_PHYAD;
	cmd |= (reg << 18) & MIF_FRAME_REGAD;
	cmd |= (MIF_FRAME_TAMSB);
	FUNC2(cmd, gp->regs + MIF_FRAME);

	while (--limit) {
		cmd = FUNC0(gp->regs + MIF_FRAME);
		if (cmd & MIF_FRAME_TALSB)
			break;

		FUNC1(10);
	}

	if (!limit)
		cmd = 0xffff;

	return cmd & MIF_FRAME_DATA;
}