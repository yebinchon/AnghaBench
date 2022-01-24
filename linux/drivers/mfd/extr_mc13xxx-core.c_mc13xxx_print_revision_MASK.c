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
typedef  int /*<<< orphan*/  u32 ;
struct mc13xxx {TYPE_1__* variant; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MC13XXX_REVISION_FAB ; 
 int /*<<< orphan*/  MC13XXX_REVISION_FIN ; 
 int /*<<< orphan*/  MC13XXX_REVISION_ICID ; 
 int /*<<< orphan*/  MC13XXX_REVISION_ICIDCODE ; 
 int /*<<< orphan*/  MC13XXX_REVISION_REVFULL ; 
 int /*<<< orphan*/  MC13XXX_REVISION_REVMETAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct mc13xxx *mc13xxx, u32 revision)
{
	FUNC0(mc13xxx->dev, "%s: rev: %d.%d, "
			"fin: %d, fab: %d, icid: %d/%d\n",
			mc13xxx->variant->name,
			FUNC1(revision, MC13XXX_REVISION_REVFULL),
			FUNC1(revision, MC13XXX_REVISION_REVMETAL),
			FUNC1(revision, MC13XXX_REVISION_FIN),
			FUNC1(revision, MC13XXX_REVISION_FAB),
			FUNC1(revision, MC13XXX_REVISION_ICID),
			FUNC1(revision, MC13XXX_REVISION_ICIDCODE));
}