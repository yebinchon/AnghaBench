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
struct netdev_notifier_changeupper_info {int /*<<< orphan*/  upper_dev; } ;

/* Variables and functions */
 unsigned long NETDEV_CHANGEUPPER ; 
 unsigned long NETDEV_PRECHANGEUPPER ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(unsigned long event, void *ptr)
{
	struct netdev_notifier_changeupper_info *info = ptr;

	if (event != NETDEV_PRECHANGEUPPER && event != NETDEV_CHANGEUPPER)
		return false;
	return FUNC0(info->upper_dev);
}