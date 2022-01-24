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
typedef  int u16 ;
struct hinic_port_link_status {scalar_t__ link; scalar_t__ status; } ;
struct hinic_dev {int flags; int /*<<< orphan*/  netdev; int /*<<< orphan*/  mgmt_lock; } ;

/* Variables and functions */
 int HINIC_INTF_UP ; 
 scalar_t__ HINIC_LINK_STATE_UP ; 
 int HINIC_LINK_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hinic_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void *handle, void *buf_in, u16 in_size,
				      void *buf_out, u16 *out_size)
{
	struct hinic_port_link_status *link_status, *ret_link_status;
	struct hinic_dev *nic_dev = handle;

	link_status = buf_in;

	if (link_status->link == HINIC_LINK_STATE_UP) {
		FUNC0(&nic_dev->mgmt_lock);

		nic_dev->flags |= HINIC_LINK_UP;

		if ((nic_dev->flags & (HINIC_LINK_UP | HINIC_INTF_UP)) ==
		    (HINIC_LINK_UP | HINIC_INTF_UP)) {
			FUNC2(nic_dev->netdev);
			FUNC5(nic_dev->netdev);
		}

		FUNC6(&nic_dev->mgmt_lock);

		FUNC3(nic_dev, drv, nic_dev->netdev, "HINIC_Link is UP\n");
	} else {
		FUNC0(&nic_dev->mgmt_lock);

		nic_dev->flags &= ~HINIC_LINK_UP;

		FUNC1(nic_dev->netdev);
		FUNC4(nic_dev->netdev);

		FUNC6(&nic_dev->mgmt_lock);

		FUNC3(nic_dev, drv, nic_dev->netdev, "HINIC_Link is DOWN\n");
	}

	ret_link_status = buf_out;
	ret_link_status->status = 0;

	*out_size = sizeof(*ret_link_status);
}