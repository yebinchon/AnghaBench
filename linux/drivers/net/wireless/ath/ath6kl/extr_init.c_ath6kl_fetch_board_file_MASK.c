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
struct TYPE_2__ {char* fw_board; char* fw_default_board; } ;
struct ath6kl {int /*<<< orphan*/  fw_board_len; int /*<<< orphan*/ * fw_board; TYPE_1__ hw; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (struct ath6kl*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (struct ath6kl*) ; 

__attribute__((used)) static int FUNC5(struct ath6kl *ar)
{
	const char *filename;
	int ret;

	if (ar->fw_board != NULL)
		return 0;

	if (FUNC0(ar->hw.fw_board == NULL))
		return -EINVAL;

	filename = ar->hw.fw_board;

	ret = FUNC2(ar, filename, &ar->fw_board,
			    &ar->fw_board_len);
	if (ret == 0) {
		/* managed to get proper board file */
		return 0;
	}

	if (FUNC4(ar)) {
		/* got board file from device tree */
		return 0;
	}

	/* there was no proper board file, try to use default instead */
	FUNC3("Failed to get board file %s (%d), trying to find default board file.\n",
		    filename, ret);

	filename = ar->hw.fw_default_board;

	ret = FUNC2(ar, filename, &ar->fw_board,
			    &ar->fw_board_len);
	if (ret) {
		FUNC1("Failed to get default board file %s: %d\n",
			   filename, ret);
		return ret;
	}

	FUNC3("WARNING! No proper board file was not found, instead using a default board file.\n");
	FUNC3("Most likely your hardware won't work as specified. Install correct board file!\n");

	return 0;
}