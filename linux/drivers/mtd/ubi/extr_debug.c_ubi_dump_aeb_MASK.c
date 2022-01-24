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
struct ubi_ainf_peb {int /*<<< orphan*/  sqnum; int /*<<< orphan*/  scrub; int /*<<< orphan*/  lnum; int /*<<< orphan*/  pnum; int /*<<< orphan*/  ec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void FUNC1(const struct ubi_ainf_peb *aeb, int type)
{
	FUNC0("eraseblock attaching information dump:\n");
	FUNC0("\tec       %d\n", aeb->ec);
	FUNC0("\tpnum     %d\n", aeb->pnum);
	if (type == 0) {
		FUNC0("\tlnum     %d\n", aeb->lnum);
		FUNC0("\tscrub    %d\n", aeb->scrub);
		FUNC0("\tsqnum    %llu\n", aeb->sqnum);
	}
}