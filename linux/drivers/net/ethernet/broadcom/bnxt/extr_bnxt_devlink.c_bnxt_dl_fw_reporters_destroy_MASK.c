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
struct bnxt_fw_health {scalar_t__ fw_fatal_reporter; scalar_t__ fw_reset_reporter; scalar_t__ fw_reporter; } ;
struct bnxt {struct bnxt_fw_health* fw_health; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct bnxt *bp)
{
	struct bnxt_fw_health *health = bp->fw_health;

	if (!health)
		return;

	if (health->fw_reporter)
		FUNC0(health->fw_reporter);

	if (health->fw_reset_reporter)
		FUNC0(health->fw_reset_reporter);

	if (health->fw_fatal_reporter)
		FUNC0(health->fw_fatal_reporter);
}