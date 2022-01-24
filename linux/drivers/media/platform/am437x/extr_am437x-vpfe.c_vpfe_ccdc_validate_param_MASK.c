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
typedef  scalar_t__ u8 ;
struct vpfe_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ gamma_wd; int /*<<< orphan*/  enable; } ;
struct vpfe_ccdc_config_params_raw {TYPE_1__ alaw; int /*<<< orphan*/  data_sz; } ;
struct vpfe_ccdc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ VPFE_CCDC_GAMMA_BITS_09_0 ; 
 scalar_t__ VPFE_CCDC_GAMMA_BITS_15_6 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 struct vpfe_device* FUNC2 (struct vpfe_ccdc*) ; 
 int /*<<< orphan*/  FUNC3 (int,struct vpfe_device*,char*) ; 

__attribute__((used)) static int
FUNC4(struct vpfe_ccdc *ccdc,
			 struct vpfe_ccdc_config_params_raw *ccdcparam)
{
	struct vpfe_device *vpfe = FUNC2(ccdc);
	u8 max_gamma, max_data;

	if (!ccdcparam->alaw.enable)
		return 0;

	max_gamma = FUNC1(ccdcparam->alaw.gamma_wd);
	max_data = FUNC0(ccdcparam->data_sz);

	if (ccdcparam->alaw.gamma_wd > VPFE_CCDC_GAMMA_BITS_09_0 ||
	    ccdcparam->alaw.gamma_wd < VPFE_CCDC_GAMMA_BITS_15_6 ||
	    max_gamma > max_data) {
		FUNC3(1, vpfe, "Invalid data line select\n");
		return -EINVAL;
	}

	return 0;
}