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
struct mmc_card {int type; } ;
struct kobj_uevent_env {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
#define  MMC_TYPE_MMC 131 
#define  MMC_TYPE_SD 130 
#define  MMC_TYPE_SDIO 129 
#define  MMC_TYPE_SD_COMBO 128 
 int FUNC0 (struct kobj_uevent_env*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct mmc_card*) ; 
 struct mmc_card* FUNC2 (struct device*) ; 

__attribute__((used)) static int
FUNC3(struct device *dev, struct kobj_uevent_env *env)
{
	struct mmc_card *card = FUNC2(dev);
	const char *type;
	int retval = 0;

	switch (card->type) {
	case MMC_TYPE_MMC:
		type = "MMC";
		break;
	case MMC_TYPE_SD:
		type = "SD";
		break;
	case MMC_TYPE_SDIO:
		type = "SDIO";
		break;
	case MMC_TYPE_SD_COMBO:
		type = "SDcombo";
		break;
	default:
		type = NULL;
	}

	if (type) {
		retval = FUNC0(env, "MMC_TYPE=%s", type);
		if (retval)
			return retval;
	}

	retval = FUNC0(env, "MMC_NAME=%s", FUNC1(card));
	if (retval)
		return retval;

	/*
	 * Request the mmc_block device.  Note: that this is a direct request
	 * for the module it carries no information as to what is inserted.
	 */
	retval = FUNC0(env, "MODALIAS=mmc:block");

	return retval;
}