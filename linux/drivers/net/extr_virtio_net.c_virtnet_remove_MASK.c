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
struct virtnet_info {int /*<<< orphan*/  dev; int /*<<< orphan*/  failover; int /*<<< orphan*/  config_work; } ;
struct virtio_device {struct virtnet_info* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct virtnet_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct virtnet_info*) ; 

__attribute__((used)) static void FUNC6(struct virtio_device *vdev)
{
	struct virtnet_info *vi = vdev->priv;

	FUNC5(vi);

	/* Make sure no work handler is accessing the device. */
	FUNC0(&vi->config_work);

	FUNC4(vi->dev);

	FUNC2(vi->failover);

	FUNC3(vi);

	FUNC1(vi->dev);
}