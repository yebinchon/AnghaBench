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
struct vringh {int dummy; } ;
struct virtio_device {struct cfv_info* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  rx_kicks; } ;
struct cfv_info {int /*<<< orphan*/  napi; int /*<<< orphan*/  vr_rx; TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct virtio_device *vdev, struct vringh *vr_rx)
{
	struct cfv_info *cfv = vdev->priv;

	++cfv->stats.rx_kicks;
	FUNC1(cfv->vr_rx);
	FUNC0(&cfv->napi);
}