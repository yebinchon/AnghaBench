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
struct efx_nic {TYPE_1__* mcdi; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;
struct TYPE_2__ {int fn_flags; } ;

/* Variables and functions */
 int MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY ; 
 struct efx_nic* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 

__attribute__((used)) static ssize_t FUNC2(struct device *dev,
					  struct device_attribute *attr,
					  char *buf)
{
	struct efx_nic *efx = FUNC0(dev);

	return FUNC1(buf, "%d\n",
		       ((efx->mcdi->fn_flags) &
			(1 << MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY))
		       ? 1 : 0);
}