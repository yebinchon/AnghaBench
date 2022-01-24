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
struct nsim_dev {scalar_t__ fw_update_status; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int NSIM_DEV_FLASH_CHUNK_SIZE ; 
 int /*<<< orphan*/  NSIM_DEV_FLASH_CHUNK_TIME_MS ; 
 int NSIM_DEV_FLASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*,char*,char const*,int,int) ; 
 struct nsim_dev* FUNC3 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct devlink *devlink, const char *file_name,
				 const char *component,
				 struct netlink_ext_ack *extack)
{
	struct nsim_dev *nsim_dev = FUNC3(devlink);
	int i;

	if (nsim_dev->fw_update_status) {
		FUNC0(devlink);
		FUNC2(devlink,
						   "Preparing to flash",
						   component, 0, 0);
	}

	for (i = 0; i < NSIM_DEV_FLASH_SIZE / NSIM_DEV_FLASH_CHUNK_SIZE; i++) {
		if (nsim_dev->fw_update_status)
			FUNC2(devlink, "Flashing",
							   component,
							   i * NSIM_DEV_FLASH_CHUNK_SIZE,
							   NSIM_DEV_FLASH_SIZE);
		FUNC4(NSIM_DEV_FLASH_CHUNK_TIME_MS);
	}

	if (nsim_dev->fw_update_status) {
		FUNC2(devlink, "Flashing",
						   component,
						   NSIM_DEV_FLASH_SIZE,
						   NSIM_DEV_FLASH_SIZE);
		FUNC2(devlink, "Flashing done",
						   component, 0, 0);
		FUNC1(devlink);
	}

	return 0;
}