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
struct TYPE_4__ {int /*<<< orphan*/  timer; } ;
struct vnet_port {int /*<<< orphan*/  dev; TYPE_2__ vio; int /*<<< orphan*/  napi; TYPE_1__* vp; int /*<<< orphan*/  list; int /*<<< orphan*/  clean_timer; } ;
struct vio_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vnet_port* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC14(struct vio_dev *vdev)
{
	struct vnet_port *port = FUNC1(&vdev->dev);
	unsigned long flags;

	if (port) {
		FUNC0(&port->vio.timer);
		FUNC0(&port->clean_timer);

		FUNC5(&port->napi);
		FUNC12(port->dev);

		FUNC4(&port->list);

		FUNC11();
		FUNC7(&port->vp->lock, flags);
		FUNC10(port);
		FUNC8(&port->vp->lock, flags);
		FUNC6(&port->napi);
		FUNC9(port);
		FUNC13(&port->vio);

		FUNC2(&vdev->dev, NULL);

		FUNC3(port->dev);
	}

	return 0;
}