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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct vnic_dev {int /*<<< orphan*/ * args; struct devcmd2_controller* devcmd2; } ;
struct devcmd2_result {scalar_t__ color; int error; int /*<<< orphan*/ * results; } ;
struct devcmd2_controller {int posted; int next_result; scalar_t__ color; scalar_t__ result_size; struct devcmd2_result* result; TYPE_2__* cmd_ring; TYPE_1__* wq_ctrl; } ;
typedef  enum vnic_devcmd_cmd { ____Placeholder_vnic_devcmd_cmd } vnic_devcmd_cmd ;
struct TYPE_4__ {int cmd; int flags; int /*<<< orphan*/ * args; } ;
struct TYPE_3__ {int /*<<< orphan*/  posted_index; int /*<<< orphan*/  fetch_index; } ;

/* Variables and functions */
 int CMD_CAPABILITY ; 
 int DEVCMD2_FNORESULT ; 
 int DEVCMD2_RING_SIZE ; 
 int EBUSY ; 
 int ENODEV ; 
 int ERR_ECMDUNKNOWN ; 
 int ETIMEDOUT ; 
 unsigned int VNIC_DEVCMD2_NARGS ; 
 unsigned int VNIC_DEVCMD_NARGS ; 
 int FUNC0 (int) ; 
 int _CMD_DIR_READ ; 
 int _CMD_DIR_WRITE ; 
 int FUNC1 (int) ; 
 int _CMD_FLAGS_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct vnic_dev*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static int FUNC8(struct vnic_dev *vdev, enum vnic_devcmd_cmd cmd,
			  int wait)
{
	struct devcmd2_controller *dc2c = vdev->devcmd2;
	struct devcmd2_result *result;
	u8 color;
	unsigned int i;
	int delay, err;
	u32 fetch_index, new_posted;
	u32 posted = dc2c->posted;

	fetch_index = FUNC3(&dc2c->wq_ctrl->fetch_index);

	if (fetch_index == 0xFFFFFFFF)
		return -ENODEV;

	new_posted = (posted + 1) % DEVCMD2_RING_SIZE;

	if (new_posted == fetch_index) {
		FUNC6(vdev, "devcmd2 %d: wq is full. fetch index: %u, posted index: %u\n",
			    FUNC2(cmd), fetch_index, posted);
		return -EBUSY;
	}
	dc2c->cmd_ring[posted].cmd = cmd;
	dc2c->cmd_ring[posted].flags = 0;

	if ((FUNC1(cmd) & _CMD_FLAGS_NOWAIT))
		dc2c->cmd_ring[posted].flags |= DEVCMD2_FNORESULT;
	if (FUNC0(cmd) & _CMD_DIR_WRITE)
		for (i = 0; i < VNIC_DEVCMD_NARGS; i++)
			dc2c->cmd_ring[posted].args[i] = vdev->args[i];

	/* Adding write memory barrier prevents compiler and/or CPU reordering,
	 * thus avoiding descriptor posting before descriptor is initialized.
	 * Otherwise, hardware can read stale descriptor fields.
	 */
	FUNC7();
	FUNC4(new_posted, &dc2c->wq_ctrl->posted_index);
	dc2c->posted = new_posted;

	if (dc2c->cmd_ring[posted].flags & DEVCMD2_FNORESULT)
		return 0;

	result = dc2c->result + dc2c->next_result;
	color = dc2c->color;

	dc2c->next_result++;
	if (dc2c->next_result == dc2c->result_size) {
		dc2c->next_result = 0;
		dc2c->color = dc2c->color ? 0 : 1;
	}

	for (delay = 0; delay < wait; delay++) {
		if (result->color == color) {
			if (result->error) {
				err = result->error;
				if (err != ERR_ECMDUNKNOWN ||
				    cmd != CMD_CAPABILITY)
					FUNC6(vdev, "Error %d devcmd %d\n",
						    err, FUNC2(cmd));
				return -err;
			}
			if (FUNC0(cmd) & _CMD_DIR_READ)
				for (i = 0; i < VNIC_DEVCMD2_NARGS; i++)
					vdev->args[i] = result->results[i];

			return 0;
		}
		FUNC5(100);
	}

	FUNC6(vdev, "devcmd %d timed out\n", FUNC2(cmd));

	return -ETIMEDOUT;
}