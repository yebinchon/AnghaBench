#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int port_flags; } ;
struct vub300_mmc_host {int card_present; int read_only; int /*<<< orphan*/  mmc; TYPE_2__* udev; scalar_t__* vub_name; scalar_t__ bus_width; TYPE_1__ system_port_status; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ disable_offload_processing ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,char*,int) ; 

__attribute__((used)) static void FUNC3(struct vub300_mmc_host *vub300)
{
	int old_card_present = vub300->card_present;
	int new_card_present =
		(0x0001 & vub300->system_port_status.port_flags) ? 1 : 0;
	vub300->read_only =
		(0x0010 & vub300->system_port_status.port_flags) ? 1 : 0;
	if (new_card_present && !old_card_present) {
		FUNC0(&vub300->udev->dev, "card just inserted\n");
		vub300->card_present = 1;
		vub300->bus_width = 0;
		if (disable_offload_processing)
			FUNC2(vub300->vub_name, "EMPTY Processing Disabled",
				sizeof(vub300->vub_name));
		else
			vub300->vub_name[0] = 0;
		FUNC1(vub300->mmc, 1);
	} else if (!new_card_present && old_card_present) {
		FUNC0(&vub300->udev->dev, "card just ejected\n");
		vub300->card_present = 0;
		FUNC1(vub300->mmc, 0);
	} else {
		/* no change */
	}
}