#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct virtio_device {TYPE_3__* config; TYPE_2__* vringh_config; struct cfv_info* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  riov; } ;
struct cfv_info {int /*<<< orphan*/  ndev; int /*<<< orphan*/  vdev; int /*<<< orphan*/ * vr_rx; TYPE_1__ ctx; int /*<<< orphan*/  debugfs; int /*<<< orphan*/  tx_release_tasklet; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* del_vqs ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* reset ) (struct virtio_device*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  (* del_vrhs ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct virtio_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct virtio_device *vdev)
{
	struct cfv_info *cfv = vdev->priv;

	FUNC2();
	FUNC1(cfv->ndev);
	FUNC3();

	FUNC7(&cfv->tx_release_tasklet);
	FUNC0(cfv->debugfs);

	FUNC9(&cfv->ctx.riov);
	vdev->config->reset(vdev);
	vdev->vringh_config->del_vrhs(cfv->vdev);
	cfv->vr_rx = NULL;
	vdev->config->del_vqs(cfv->vdev);
	FUNC8(cfv->ndev);
}