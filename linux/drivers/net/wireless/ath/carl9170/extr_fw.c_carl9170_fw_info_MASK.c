#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct carl9170fw_motd_desc {int /*<<< orphan*/  release; int /*<<< orphan*/  fw_year_month_day; } ;
struct ar9170 {TYPE_2__* hw; TYPE_3__* udev; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {TYPE_1__* wiphy; } ;
struct TYPE_4__ {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  CARL9170FW_API_MAX_VER ; 
 int /*<<< orphan*/  CARL9170FW_API_MIN_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CARL9170FW_MOTD_DESC_CUR_VER ; 
 int /*<<< orphan*/  CARL9170FW_MOTD_RELEASE_LEN ; 
 int /*<<< orphan*/  CARL9170FW_VERSION_DAY ; 
 int /*<<< orphan*/  CARL9170FW_VERSION_GIT ; 
 int /*<<< orphan*/  CARL9170FW_VERSION_MONTH ; 
 int /*<<< orphan*/  CARL9170FW_VERSION_YEAR ; 
 int /*<<< orphan*/  MOTD_MAGIC ; 
 struct carl9170fw_motd_desc* FUNC3 (struct ar9170*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ar9170 *ar)
{
	const struct carl9170fw_motd_desc *motd_desc;
	unsigned int str_ver_len;
	u32 fw_date;

	FUNC4(&ar->udev->dev, "driver   API: %s 2%03d-%02d-%02d [%d-%d]\n",
		CARL9170FW_VERSION_GIT, CARL9170FW_VERSION_YEAR,
		CARL9170FW_VERSION_MONTH, CARL9170FW_VERSION_DAY,
		CARL9170FW_API_MIN_VER, CARL9170FW_API_MAX_VER);

	motd_desc = FUNC3(ar, MOTD_MAGIC,
		sizeof(*motd_desc), CARL9170FW_MOTD_DESC_CUR_VER);

	if (motd_desc) {
		str_ver_len = FUNC7(motd_desc->release,
			CARL9170FW_MOTD_RELEASE_LEN);

		fw_date = FUNC5(motd_desc->fw_year_month_day);

		FUNC4(&ar->udev->dev, "firmware API: %.*s 2%03d-%02d-%02d\n",
			 str_ver_len, motd_desc->release,
			 FUNC2(fw_date),
			 FUNC1(fw_date),
			 FUNC0(fw_date));

		FUNC6(ar->hw->wiphy->fw_version, motd_desc->release,
			sizeof(ar->hw->wiphy->fw_version));
	}
}