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
struct virtnet_info {int curr_queue_pairs; int max_queue_pairs; int /*<<< orphan*/  dev; TYPE_1__* sq; TYPE_2__* rq; int /*<<< orphan*/  refill; } ;
struct virtio_device {struct virtnet_info* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; } ;
struct TYPE_3__ {int /*<<< orphan*/  napi; int /*<<< orphan*/  vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct virtnet_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct virtnet_info*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct virtnet_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct virtio_device *vdev)
{
	struct virtnet_info *vi = vdev->priv;
	int err, i;

	err = FUNC0(vi);
	if (err)
		return err;

	FUNC7(vdev);

	if (FUNC2(vi->dev)) {
		for (i = 0; i < vi->curr_queue_pairs; i++)
			if (!FUNC6(vi, &vi->rq[i], GFP_KERNEL))
				FUNC5(&vi->refill, 0);

		for (i = 0; i < vi->max_queue_pairs; i++) {
			FUNC8(vi->rq[i].vq, &vi->rq[i].napi);
			FUNC9(vi, vi->sq[i].vq,
					       &vi->sq[i].napi);
		}
	}

	FUNC3(vi->dev);
	FUNC1(vi->dev);
	FUNC4(vi->dev);
	return err;
}