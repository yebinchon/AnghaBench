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
struct ksz_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_POWER_MANAGEMENT_1 ; 
 int SW_POWER_MANAGEMENT_MODE_S ; 
 int SW_SOFTWARE_POWER_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct ksz_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC1(struct ksz_device *dev)
{
	/* reset switch */
	FUNC0(dev, REG_POWER_MANAGEMENT_1,
		   SW_SOFTWARE_POWER_DOWN << SW_POWER_MANAGEMENT_MODE_S);
	FUNC0(dev, REG_POWER_MANAGEMENT_1, 0);

	return 0;
}