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
struct vsp1_dl_manager {int /*<<< orphan*/  index; int /*<<< orphan*/  queued; struct vsp1_device* vsp1; } ;
struct vsp1_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int VI6_CMD_UPDHDR ; 
 int FUNC1 (struct vsp1_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct vsp1_dl_manager *dlm)
{
	struct vsp1_device *vsp1 = dlm->vsp1;

	if (!dlm->queued)
		return false;

	/*
	 * Check whether the VSP1 has taken the update. The hardware indicates
	 * this by clearing the UPDHDR bit in the CMD register.
	 */
	return !!(FUNC1(vsp1, FUNC0(dlm->index)) & VI6_CMD_UPDHDR);
}