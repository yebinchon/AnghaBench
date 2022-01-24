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
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALAW ; 
 int /*<<< orphan*/  BLKCMP ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CFG ; 
 int /*<<< orphan*/  CLAMP ; 
 int /*<<< orphan*/  COLPTN ; 
 int /*<<< orphan*/  CULLING ; 
 int /*<<< orphan*/  DCSUB ; 
 int /*<<< orphan*/  FMTCFG ; 
 int /*<<< orphan*/  FMT_HORZ ; 
 int /*<<< orphan*/  FMT_VERT ; 
 int /*<<< orphan*/  FPC ; 
 int /*<<< orphan*/  FPC_ADDR ; 
 int /*<<< orphan*/  HD_VD_WID ; 
 int /*<<< orphan*/  HORZ_INFO ; 
 int /*<<< orphan*/  HSIZE_OFF ; 
 int /*<<< orphan*/  LSC_CONFIG ; 
 int /*<<< orphan*/  LSC_INITIAL ; 
 int /*<<< orphan*/  LSC_TABLE_BASE ; 
 int /*<<< orphan*/  LSC_TABLE_OFFSET ; 
 int /*<<< orphan*/  PCR ; 
 int /*<<< orphan*/  PIX_LINES ; 
 int /*<<< orphan*/  PRGEVEN0 ; 
 int /*<<< orphan*/  PRGEVEN1 ; 
 int /*<<< orphan*/  PRGODD0 ; 
 int /*<<< orphan*/  PRGODD1 ; 
 int /*<<< orphan*/  REC656IF ; 
 int /*<<< orphan*/  SDOFST ; 
 int /*<<< orphan*/  SDR_ADDR ; 
 int /*<<< orphan*/  SYN_MODE ; 
 int /*<<< orphan*/  VDINT ; 
 int /*<<< orphan*/  VERT_LINES ; 
 int /*<<< orphan*/  VERT_START ; 
 int /*<<< orphan*/  VP_OUT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct isp_device* FUNC2 (struct isp_ccdc_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC2(ccdc);

	FUNC1(isp->dev, "-------------CCDC Register dump-------------\n");

	FUNC0(isp, PCR);
	FUNC0(isp, SYN_MODE);
	FUNC0(isp, HD_VD_WID);
	FUNC0(isp, PIX_LINES);
	FUNC0(isp, HORZ_INFO);
	FUNC0(isp, VERT_START);
	FUNC0(isp, VERT_LINES);
	FUNC0(isp, CULLING);
	FUNC0(isp, HSIZE_OFF);
	FUNC0(isp, SDOFST);
	FUNC0(isp, SDR_ADDR);
	FUNC0(isp, CLAMP);
	FUNC0(isp, DCSUB);
	FUNC0(isp, COLPTN);
	FUNC0(isp, BLKCMP);
	FUNC0(isp, FPC);
	FUNC0(isp, FPC_ADDR);
	FUNC0(isp, VDINT);
	FUNC0(isp, ALAW);
	FUNC0(isp, REC656IF);
	FUNC0(isp, CFG);
	FUNC0(isp, FMTCFG);
	FUNC0(isp, FMT_HORZ);
	FUNC0(isp, FMT_VERT);
	FUNC0(isp, PRGEVEN0);
	FUNC0(isp, PRGEVEN1);
	FUNC0(isp, PRGODD0);
	FUNC0(isp, PRGODD1);
	FUNC0(isp, VP_OUT);
	FUNC0(isp, LSC_CONFIG);
	FUNC0(isp, LSC_INITIAL);
	FUNC0(isp, LSC_TABLE_BASE);
	FUNC0(isp, LSC_TABLE_OFFSET);

	FUNC1(isp->dev, "--------------------------------------------\n");
}