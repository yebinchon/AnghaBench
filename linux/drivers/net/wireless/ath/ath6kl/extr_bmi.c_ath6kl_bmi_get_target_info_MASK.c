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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath6kl_bmi_target_info {int /*<<< orphan*/  type; int /*<<< orphan*/  version; int /*<<< orphan*/  byte_count; } ;
struct TYPE_2__ {scalar_t__ done_sent; } ;
struct ath6kl {scalar_t__ hif_type; TYPE_1__ bmi; } ;
typedef  int /*<<< orphan*/  cid ;

/* Variables and functions */
 int /*<<< orphan*/  ATH6KL_DBG_BMI ; 
 scalar_t__ ATH6KL_HIF_TYPE_USB ; 
 int /*<<< orphan*/  BMI_GET_TARGET_INFO ; 
 int EACCES ; 
 int EINVAL ; 
 int TARGET_VERSION_SENTINAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int FUNC3 (struct ath6kl*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ath6kl*,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct ath6kl *ar,
			       struct ath6kl_bmi_target_info *targ_info)
{
	int ret;
	u32 cid = BMI_GET_TARGET_INFO;

	if (ar->bmi.done_sent) {
		FUNC2("bmi done sent already, cmd %d disallowed\n", cid);
		return -EACCES;
	}

	ret = FUNC4(ar, (u8 *)&cid, sizeof(cid));
	if (ret) {
		FUNC2("Unable to send get target info: %d\n", ret);
		return ret;
	}

	if (ar->hif_type == ATH6KL_HIF_TYPE_USB) {
		ret = FUNC3(ar, (u8 *)targ_info,
					  sizeof(*targ_info));
	} else {
		ret = FUNC3(ar, (u8 *)&targ_info->version,
				sizeof(targ_info->version));
	}

	if (ret) {
		FUNC2("Unable to recv target info: %d\n", ret);
		return ret;
	}

	if (FUNC5(targ_info->version) == TARGET_VERSION_SENTINAL) {
		/* Determine how many bytes are in the Target's targ_info */
		ret = FUNC3(ar,
				   (u8 *)&targ_info->byte_count,
				   sizeof(targ_info->byte_count));
		if (ret) {
			FUNC2("unable to read target info byte count: %d\n",
				   ret);
			return ret;
		}

		/*
		 * The target's targ_info doesn't match the host's targ_info.
		 * We need to do some backwards compatibility to make this work.
		 */
		if (FUNC5(targ_info->byte_count) != sizeof(*targ_info)) {
			FUNC0(1);
			return -EINVAL;
		}

		/* Read the remainder of the targ_info */
		ret = FUNC3(ar,
				   ((u8 *)targ_info) +
				   sizeof(targ_info->byte_count),
				   sizeof(*targ_info) -
				   sizeof(targ_info->byte_count));

		if (ret) {
			FUNC2("Unable to read target info (%d bytes): %d\n",
				   targ_info->byte_count, ret);
			return ret;
		}
	}

	FUNC1(ATH6KL_DBG_BMI, "target info (ver: 0x%x type: 0x%x)\n",
		   targ_info->version, targ_info->type);

	return 0;
}