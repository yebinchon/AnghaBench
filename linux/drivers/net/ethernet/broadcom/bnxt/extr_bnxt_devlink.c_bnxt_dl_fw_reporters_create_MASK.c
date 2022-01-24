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
struct bnxt_fw_health {int /*<<< orphan*/ * fw_fatal_reporter; int /*<<< orphan*/ * fw_reset_reporter; int /*<<< orphan*/ * fw_reporter; } ;
struct bnxt {int /*<<< orphan*/  dev; int /*<<< orphan*/  dl; struct bnxt_fw_health* fw_health; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bnxt_dl_fw_fatal_reporter_ops ; 
 int /*<<< orphan*/  bnxt_dl_fw_reporter_ops ; 
 int /*<<< orphan*/  bnxt_dl_fw_reset_reporter_ops ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,struct bnxt*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bnxt *bp)
{
	struct bnxt_fw_health *health = bp->fw_health;

	if (!health)
		return;

	health->fw_reporter =
		FUNC2(bp->dl, &bnxt_dl_fw_reporter_ops,
					       0, false, bp);
	if (FUNC0(health->fw_reporter)) {
		FUNC3(bp->dev, "Failed to create FW health reporter, rc = %ld\n",
			    FUNC1(health->fw_reporter));
		health->fw_reporter = NULL;
	}

	health->fw_reset_reporter =
		FUNC2(bp->dl,
					       &bnxt_dl_fw_reset_reporter_ops,
					       0, true, bp);
	if (FUNC0(health->fw_reset_reporter)) {
		FUNC3(bp->dev, "Failed to create FW fatal health reporter, rc = %ld\n",
			    FUNC1(health->fw_reset_reporter));
		health->fw_reset_reporter = NULL;
	}

	health->fw_fatal_reporter =
		FUNC2(bp->dl,
					       &bnxt_dl_fw_fatal_reporter_ops,
					       0, true, bp);
	if (FUNC0(health->fw_fatal_reporter)) {
		FUNC3(bp->dev, "Failed to create FW fatal health reporter, rc = %ld\n",
			    FUNC1(health->fw_fatal_reporter));
		health->fw_fatal_reporter = NULL;
	}
}