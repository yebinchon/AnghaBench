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
struct isp_prev_device {int dummy; } ;
struct isp_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AVE ; 
 int /*<<< orphan*/  BLKADJOFF ; 
 int /*<<< orphan*/  CDC_THR0 ; 
 int /*<<< orphan*/  CDC_THR1 ; 
 int /*<<< orphan*/  CDC_THR2 ; 
 int /*<<< orphan*/  CDC_THR3 ; 
 int /*<<< orphan*/  CFA ; 
 int /*<<< orphan*/  CNT_BRT ; 
 int /*<<< orphan*/  CSC0 ; 
 int /*<<< orphan*/  CSC1 ; 
 int /*<<< orphan*/  CSC2 ; 
 int /*<<< orphan*/  CSC_OFFSET ; 
 int /*<<< orphan*/  CSUP ; 
 int /*<<< orphan*/  DRKF_OFFSET ; 
 int /*<<< orphan*/  DSDR_ADDR ; 
 int /*<<< orphan*/  HMED ; 
 int /*<<< orphan*/  HORZ_INFO ; 
 int /*<<< orphan*/  NF ; 
 int /*<<< orphan*/  PCR ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RADR_OFFSET ; 
 int /*<<< orphan*/  RGB_MAT1 ; 
 int /*<<< orphan*/  RGB_MAT2 ; 
 int /*<<< orphan*/  RGB_MAT3 ; 
 int /*<<< orphan*/  RGB_MAT4 ; 
 int /*<<< orphan*/  RGB_MAT5 ; 
 int /*<<< orphan*/  RGB_OFF1 ; 
 int /*<<< orphan*/  RGB_OFF2 ; 
 int /*<<< orphan*/  RSDR_ADDR ; 
 int /*<<< orphan*/  SETUP_YC ; 
 int /*<<< orphan*/  SET_TBL_ADDR ; 
 int /*<<< orphan*/  VERT_INFO ; 
 int /*<<< orphan*/  WADD_OFFSET ; 
 int /*<<< orphan*/  WBGAIN ; 
 int /*<<< orphan*/  WBSEL ; 
 int /*<<< orphan*/  WB_DGAIN ; 
 int /*<<< orphan*/  WSDR_ADDR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct isp_device* FUNC2 (struct isp_prev_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_prev_device *prev)
{
	struct isp_device *isp = FUNC2(prev);

	FUNC1(isp->dev, "-------------Preview Register dump----------\n");

	FUNC0(isp, PCR);
	FUNC0(isp, HORZ_INFO);
	FUNC0(isp, VERT_INFO);
	FUNC0(isp, RSDR_ADDR);
	FUNC0(isp, RADR_OFFSET);
	FUNC0(isp, DSDR_ADDR);
	FUNC0(isp, DRKF_OFFSET);
	FUNC0(isp, WSDR_ADDR);
	FUNC0(isp, WADD_OFFSET);
	FUNC0(isp, AVE);
	FUNC0(isp, HMED);
	FUNC0(isp, NF);
	FUNC0(isp, WB_DGAIN);
	FUNC0(isp, WBGAIN);
	FUNC0(isp, WBSEL);
	FUNC0(isp, CFA);
	FUNC0(isp, BLKADJOFF);
	FUNC0(isp, RGB_MAT1);
	FUNC0(isp, RGB_MAT2);
	FUNC0(isp, RGB_MAT3);
	FUNC0(isp, RGB_MAT4);
	FUNC0(isp, RGB_MAT5);
	FUNC0(isp, RGB_OFF1);
	FUNC0(isp, RGB_OFF2);
	FUNC0(isp, CSC0);
	FUNC0(isp, CSC1);
	FUNC0(isp, CSC2);
	FUNC0(isp, CSC_OFFSET);
	FUNC0(isp, CNT_BRT);
	FUNC0(isp, CSUP);
	FUNC0(isp, SETUP_YC);
	FUNC0(isp, SET_TBL_ADDR);
	FUNC0(isp, CDC_THR0);
	FUNC0(isp, CDC_THR1);
	FUNC0(isp, CDC_THR2);
	FUNC0(isp, CDC_THR3);

	FUNC1(isp->dev, "--------------------------------------------\n");
}