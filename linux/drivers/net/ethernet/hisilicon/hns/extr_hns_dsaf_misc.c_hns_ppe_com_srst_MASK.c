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
struct dsaf_device {int reset_offset; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DSAF_SUB_SC_PPE_RESET_DREQ_REG ; 
 int DSAF_SUB_SC_PPE_RESET_REQ_REG ; 
 int DSAF_SUB_SC_RCB_PPE_COM_RESET_DREQ_REG ; 
 int DSAF_SUB_SC_RCB_PPE_COM_RESET_REQ_REG ; 
 int /*<<< orphan*/  FUNC0 (struct dsaf_device*) ; 
 int RESET_REQ_OR_DREQ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dsaf_device*,int,int) ; 

__attribute__((used)) static void FUNC3(struct dsaf_device *dsaf_dev, bool dereset)
{
	u32 reg_val;
	u32 reg_addr;

	if (!(FUNC1(dsaf_dev->dev)))
		return;

	if (!FUNC0(dsaf_dev)) {
		reg_val = RESET_REQ_OR_DREQ;
		if (!dereset)
			reg_addr = DSAF_SUB_SC_RCB_PPE_COM_RESET_REQ_REG;
		else
			reg_addr = DSAF_SUB_SC_RCB_PPE_COM_RESET_DREQ_REG;

	} else {
		reg_val = 0x100 << dsaf_dev->reset_offset;

		if (!dereset)
			reg_addr = DSAF_SUB_SC_PPE_RESET_REQ_REG;
		else
			reg_addr = DSAF_SUB_SC_PPE_RESET_DREQ_REG;
	}

	FUNC2(dsaf_dev, reg_addr, reg_val);
}