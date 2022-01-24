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
struct vio_dev {int /*<<< orphan*/  unit_address; int /*<<< orphan*/  dev; } ;
struct crq_server_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 struct crq_server_adapter* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct crq_server_adapter*) ; 

__attribute__((used)) static int FUNC3(struct vio_dev *vdev)
{
	struct crq_server_adapter *adapter = FUNC0(&vdev->dev);

	FUNC1(adapter->dev, "Entering remove for UA 0x%x\n",
		 vdev->unit_address);
	FUNC2(adapter);

	return 0;
}