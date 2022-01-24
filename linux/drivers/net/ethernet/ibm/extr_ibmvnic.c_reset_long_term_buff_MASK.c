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
struct ibmvnic_long_term_buff {int /*<<< orphan*/  size; int /*<<< orphan*/  map_id; int /*<<< orphan*/  addr; int /*<<< orphan*/  buff; } ;
struct ibmvnic_adapter {TYPE_1__* vdev; scalar_t__ fw_done_rc; int /*<<< orphan*/  fw_done; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (struct ibmvnic_adapter*,struct ibmvnic_long_term_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ibmvnic_adapter*,struct ibmvnic_long_term_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ibmvnic_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ibmvnic_adapter *adapter,
				struct ibmvnic_long_term_buff *ltb)
{
	int rc;

	FUNC4(ltb->buff, 0, ltb->size);

	FUNC3(&adapter->fw_done);
	rc = FUNC5(adapter, ltb->addr, ltb->size, ltb->map_id);
	if (rc)
		return rc;
	FUNC6(&adapter->fw_done);

	if (adapter->fw_done_rc) {
		FUNC1(&adapter->vdev->dev,
			 "Reset failed, attempting to free and reallocate buffer\n");
		FUNC2(adapter, ltb);
		return FUNC0(adapter, ltb, ltb->size);
	}
	return 0;
}