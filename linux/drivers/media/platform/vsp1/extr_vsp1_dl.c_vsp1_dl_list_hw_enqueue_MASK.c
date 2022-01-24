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
struct vsp1_dl_manager {int /*<<< orphan*/  index; struct vsp1_device* vsp1; } ;
struct vsp1_dl_list {int /*<<< orphan*/  dma; struct vsp1_dl_manager* dlm; } ;
struct vsp1_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct vsp1_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct vsp1_dl_list *dl)
{
	struct vsp1_dl_manager *dlm = dl->dlm;
	struct vsp1_device *vsp1 = dlm->vsp1;

	/*
	 * Program the display list header address. If the hardware is idle
	 * (single-shot mode or first frame in continuous mode) it will then be
	 * started independently. If the hardware is operating, the
	 * VI6_DL_HDR_REF_ADDR register will be updated with the display list
	 * address.
	 */
	FUNC1(vsp1, FUNC0(dlm->index), dl->dma);
}