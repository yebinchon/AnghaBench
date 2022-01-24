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
struct virtnet_info {int max_queue_pairs; TYPE_2__* sq; TYPE_1__* rq; int /*<<< orphan*/  dev; int /*<<< orphan*/  refill; int /*<<< orphan*/  config_work; } ;
struct virtio_device {struct virtnet_info* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct virtio_device *vdev)
{
	struct virtnet_info *vi = vdev->priv;
	int i;

	/* Make sure no work handler is accessing the device */
	FUNC1(&vi->config_work);

	FUNC5(vi->dev);
	FUNC3(vi->dev);
	FUNC6(vi->dev);
	FUNC0(&vi->refill);

	if (FUNC4(vi->dev)) {
		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC2(&vi->rq[i].napi);
			FUNC7(&vi->sq[i].napi);
		}
	}
}