#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dma; } ;
struct ispccdc_lsc_config_req {TYPE_1__ table; int /*<<< orphan*/  config; int /*<<< orphan*/  enable; } ;
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct isp_ccdc_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct isp_ccdc_device*) ; 

__attribute__((used)) static int FUNC6(struct isp_ccdc_device *ccdc,
				struct ispccdc_lsc_config_req *req)
{
	if (!req->enable)
		return -EINVAL;

	if (FUNC3(ccdc, &req->config) < 0) {
		FUNC4(FUNC5(ccdc), "Discard LSC configuration\n");
		return -EINVAL;
	}

	if (FUNC0(ccdc))
		return -EBUSY;

	FUNC2(ccdc, &req->config);
	FUNC1(ccdc, req->table.dma);
	return 0;
}