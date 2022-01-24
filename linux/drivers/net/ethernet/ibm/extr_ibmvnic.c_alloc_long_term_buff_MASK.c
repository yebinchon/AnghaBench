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
struct ibmvnic_long_term_buff {int size; int /*<<< orphan*/  addr; int /*<<< orphan*/  buff; int /*<<< orphan*/  map_id; } ;
struct ibmvnic_adapter {int /*<<< orphan*/  fw_done_rc; int /*<<< orphan*/  fw_done; int /*<<< orphan*/  map_id; TYPE_1__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ibmvnic_adapter*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct ibmvnic_adapter *adapter,
				struct ibmvnic_long_term_buff *ltb, int size)
{
	struct device *dev = &adapter->vdev->dev;
	int rc;

	ltb->size = size;
	ltb->buff = FUNC1(dev, ltb->size, &ltb->addr,
				       GFP_KERNEL);

	if (!ltb->buff) {
		FUNC0(dev, "Couldn't alloc long term buffer\n");
		return -ENOMEM;
	}
	ltb->map_id = adapter->map_id;
	adapter->map_id++;

	FUNC3(&adapter->fw_done);
	rc = FUNC4(adapter, ltb->addr,
			      ltb->size, ltb->map_id);
	if (rc) {
		FUNC2(dev, ltb->size, ltb->buff, ltb->addr);
		return rc;
	}
	FUNC5(&adapter->fw_done);

	if (adapter->fw_done_rc) {
		FUNC0(dev, "Couldn't map long term buffer,rc = %d\n",
			adapter->fw_done_rc);
		FUNC2(dev, ltb->size, ltb->buff, ltb->addr);
		return -1;
	}
	return 0;
}