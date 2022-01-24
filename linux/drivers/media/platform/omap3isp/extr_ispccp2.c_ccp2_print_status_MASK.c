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
struct isp_ccp2_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CTRL ; 
 int /*<<< orphan*/  LC01_IRQENABLE ; 
 int /*<<< orphan*/  LC01_IRQSTATUS ; 
 int /*<<< orphan*/  LC23_IRQENABLE ; 
 int /*<<< orphan*/  LC23_IRQSTATUS ; 
 int /*<<< orphan*/  LCM_CTRL ; 
 int /*<<< orphan*/  LCM_DST_ADDR ; 
 int /*<<< orphan*/  LCM_DST_OFST ; 
 int /*<<< orphan*/  LCM_HSIZE ; 
 int /*<<< orphan*/  LCM_IRQENABLE ; 
 int /*<<< orphan*/  LCM_IRQSTATUS ; 
 int /*<<< orphan*/  LCM_PREFETCH ; 
 int /*<<< orphan*/  LCM_SRC_ADDR ; 
 int /*<<< orphan*/  LCM_SRC_OFST ; 
 int /*<<< orphan*/  LCM_VSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSCONFIG ; 
 int /*<<< orphan*/  SYSSTATUS ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 struct isp_device* FUNC13 (struct isp_ccp2_device*) ; 

__attribute__((used)) static void FUNC14(struct isp_ccp2_device *ccp2)
{
	struct isp_device *isp = FUNC13(ccp2);

	FUNC12(isp->dev, "-------------CCP2 Register dump-------------\n");

	FUNC0(isp, SYSCONFIG);
	FUNC0(isp, SYSSTATUS);
	FUNC0(isp, LC01_IRQENABLE);
	FUNC0(isp, LC01_IRQSTATUS);
	FUNC0(isp, LC23_IRQENABLE);
	FUNC0(isp, LC23_IRQSTATUS);
	FUNC0(isp, LCM_IRQENABLE);
	FUNC0(isp, LCM_IRQSTATUS);
	FUNC0(isp, CTRL);
	FUNC0(isp, FUNC2(0));
	FUNC0(isp, FUNC1(0));
	FUNC0(isp, FUNC11(0));
	FUNC0(isp, FUNC10(0));
	FUNC0(isp, FUNC9(0));
	FUNC0(isp, FUNC8(0));
	FUNC0(isp, FUNC7(0));
	FUNC0(isp, FUNC6(0));
	FUNC0(isp, FUNC4(0));
	FUNC0(isp, FUNC5(0));
	FUNC0(isp, FUNC3(0));
	FUNC0(isp, LCM_CTRL);
	FUNC0(isp, LCM_VSIZE);
	FUNC0(isp, LCM_HSIZE);
	FUNC0(isp, LCM_PREFETCH);
	FUNC0(isp, LCM_SRC_ADDR);
	FUNC0(isp, LCM_SRC_OFST);
	FUNC0(isp, LCM_DST_ADDR);
	FUNC0(isp, LCM_DST_OFST);

	FUNC12(isp->dev, "--------------------------------------------\n");
}