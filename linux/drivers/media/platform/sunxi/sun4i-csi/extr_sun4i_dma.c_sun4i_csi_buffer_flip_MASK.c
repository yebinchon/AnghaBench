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
struct sun4i_csi {scalar_t__ regs; } ;

/* Variables and functions */
 int CSI_BUF_CTRL_DBS ; 
 scalar_t__ CSI_BUF_CTRL_REG ; 
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (struct sun4i_csi*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct sun4i_csi*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct sun4i_csi *csi, unsigned int sequence)
{
	u32 reg = FUNC0(csi->regs + CSI_BUF_CTRL_REG);
	unsigned int next;

	/* Our next buffer is not the current buffer */
	next = !(reg & CSI_BUF_CTRL_DBS);

	/* Report the previous buffer as done */
	FUNC2(csi, next, sequence);

	/* Put a new buffer in there */
	return FUNC1(csi, next);
}