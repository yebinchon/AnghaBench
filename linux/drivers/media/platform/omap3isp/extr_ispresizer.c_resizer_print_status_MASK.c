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
struct isp_res_device {int dummy; } ;
struct isp_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNT ; 
 int /*<<< orphan*/  IN_SIZE ; 
 int /*<<< orphan*/  IN_START ; 
 int /*<<< orphan*/  OUT_SIZE ; 
 int /*<<< orphan*/  PCR ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SDR_INADD ; 
 int /*<<< orphan*/  SDR_INOFF ; 
 int /*<<< orphan*/  SDR_OUTADD ; 
 int /*<<< orphan*/  SDR_OUTOFF ; 
 int /*<<< orphan*/  YENH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 struct isp_device* FUNC2 (struct isp_res_device*) ; 

__attribute__((used)) static void FUNC3(struct isp_res_device *res)
{
	struct isp_device *isp = FUNC2(res);

	FUNC1(isp->dev, "-------------Resizer Register dump----------\n");

	FUNC0(isp, PCR);
	FUNC0(isp, CNT);
	FUNC0(isp, OUT_SIZE);
	FUNC0(isp, IN_START);
	FUNC0(isp, IN_SIZE);
	FUNC0(isp, SDR_INADD);
	FUNC0(isp, SDR_INOFF);
	FUNC0(isp, SDR_OUTADD);
	FUNC0(isp, SDR_OUTOFF);
	FUNC0(isp, YENH);

	FUNC1(isp->dev, "--------------------------------------------\n");
}