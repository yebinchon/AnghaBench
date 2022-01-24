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
struct isp_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  IRQ0ENABLE ; 
 int /*<<< orphan*/  IRQ0STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCR ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDR_REQ_EXP ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int /*<<< orphan*/  SYSSTATUS ; 
 int /*<<< orphan*/  TCTRL_CTRL ; 
 int /*<<< orphan*/  TCTRL_FRAME ; 
 int /*<<< orphan*/  TCTRL_GRESET_LENGTH ; 
 int /*<<< orphan*/  TCTRL_PSTRB_DELAY ; 
 int /*<<< orphan*/  TCTRL_PSTRB_LENGTH ; 
 int /*<<< orphan*/  TCTRL_PSTRB_REPLAY ; 
 int /*<<< orphan*/  TCTRL_SHUT_DELAY ; 
 int /*<<< orphan*/  TCTRL_SHUT_LENGTH ; 
 int /*<<< orphan*/  TCTRL_STRB_DELAY ; 
 int /*<<< orphan*/  TCTRL_STRB_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

void FUNC3(struct isp_device *isp)
{
	FUNC2(isp->dev, "-------------ISP Register dump--------------\n");

	FUNC0(isp, SYSCONFIG);
	FUNC0(isp, SYSSTATUS);
	FUNC0(isp, IRQ0ENABLE);
	FUNC0(isp, IRQ0STATUS);
	FUNC0(isp, TCTRL_GRESET_LENGTH);
	FUNC0(isp, TCTRL_PSTRB_REPLAY);
	FUNC0(isp, CTRL);
	FUNC0(isp, TCTRL_CTRL);
	FUNC0(isp, TCTRL_FRAME);
	FUNC0(isp, TCTRL_PSTRB_DELAY);
	FUNC0(isp, TCTRL_STRB_DELAY);
	FUNC0(isp, TCTRL_SHUT_DELAY);
	FUNC0(isp, TCTRL_PSTRB_LENGTH);
	FUNC0(isp, TCTRL_STRB_LENGTH);
	FUNC0(isp, TCTRL_SHUT_LENGTH);

	FUNC1(isp, PCR);
	FUNC1(isp, SDR_REQ_EXP);

	FUNC2(isp->dev, "--------------------------------------------\n");
}