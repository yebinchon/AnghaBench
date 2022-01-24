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
struct vub300_mmc_host {int /*<<< orphan*/  kref; int /*<<< orphan*/  pollwork; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pollworkqueue ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  vub300_delete ; 

__attribute__((used)) static void FUNC3(struct vub300_mmc_host *vub300, int delay)
{
	FUNC0(&vub300->kref);
	if (FUNC2(pollworkqueue, &vub300->pollwork, delay)) {
		/*
		 * then the pollworkqueue was not previously
		 * running and the above get ref is obvious
		 * required and will be put when the thread
		 * terminates by a specific call
		 */
	} else {
		/*
		 * the pollworkqueue was already running from
		 * a previous invocation and thus to keep the
		 * kref counts correct we must undo the get
		 */
		FUNC1(&vub300->kref, vub300_delete);
	}
}