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
struct isp_csi2_device {int /*<<< orphan*/  regs1; int /*<<< orphan*/  available; struct isp_device* isp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_H ; 
 int /*<<< orphan*/  DBG_P ; 
 int /*<<< orphan*/  GNQ ; 
 int /*<<< orphan*/  IRQENABLE ; 
 int /*<<< orphan*/  IRQSTATUS ; 
 int /*<<< orphan*/  PHY_CFG ; 
 int /*<<< orphan*/  PHY_IRQENABLE ; 
 int /*<<< orphan*/  PHY_IRQSTATUS ; 
 int /*<<< orphan*/  SHORT_PACKET ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int /*<<< orphan*/  SYSSTATUS ; 
 int /*<<< orphan*/  TIMING ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC10(struct isp_csi2_device *csi2)
{
	struct isp_device *isp = csi2->isp;

	if (!csi2->available)
		return;

	FUNC9(isp->dev, "-------------CSI2 Register dump-------------\n");

	FUNC0(isp, csi2->regs1, SYSCONFIG);
	FUNC0(isp, csi2->regs1, SYSSTATUS);
	FUNC0(isp, csi2->regs1, IRQENABLE);
	FUNC0(isp, csi2->regs1, IRQSTATUS);
	FUNC0(isp, csi2->regs1, CTRL);
	FUNC0(isp, csi2->regs1, DBG_H);
	FUNC0(isp, csi2->regs1, GNQ);
	FUNC0(isp, csi2->regs1, PHY_CFG);
	FUNC0(isp, csi2->regs1, PHY_IRQSTATUS);
	FUNC0(isp, csi2->regs1, SHORT_PACKET);
	FUNC0(isp, csi2->regs1, PHY_IRQENABLE);
	FUNC0(isp, csi2->regs1, DBG_P);
	FUNC0(isp, csi2->regs1, TIMING);
	FUNC0(isp, csi2->regs1, FUNC1(0));
	FUNC0(isp, csi2->regs1, FUNC2(0));
	FUNC0(isp, csi2->regs1, FUNC4(0));
	FUNC0(isp, csi2->regs1, FUNC5(0));
	FUNC0(isp, csi2->regs1, FUNC6(0));
	FUNC0(isp, csi2->regs1, FUNC7(0));
	FUNC0(isp, csi2->regs1, FUNC8(0));
	FUNC0(isp, csi2->regs1, FUNC3(0));

	FUNC9(isp->dev, "--------------------------------------------\n");
}