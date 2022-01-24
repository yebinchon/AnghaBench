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
typedef  int /*<<< orphan*/  u64 ;
struct vio_dev {int /*<<< orphan*/  unit_address; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  H_SEND_CRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,long,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 long FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct vio_dev* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static long FUNC4(struct crq_server_adapter *adapter,
			    u64 word1, u64 word2)
{
	struct vio_dev *vdev = FUNC3(adapter->dev);
	long rc = 0;

	FUNC0(adapter->dev, "(0x%x, 0x%016llx, 0x%016llx)\n",
		vdev->unit_address, word1, word2);

	/*
	 * Ensure the command buffer is flushed to memory before handing it
	 * over to the other side to prevent it from fetching any stale data.
	 */
	FUNC1();
	rc = FUNC2(H_SEND_CRQ, vdev->unit_address, word1, word2);
	FUNC0(adapter->dev, "rc = 0x%lx\n", rc);

	return rc;
}