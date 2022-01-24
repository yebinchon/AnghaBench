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
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;
struct vnet_port {TYPE_1__ vio; int /*<<< orphan*/  napi; int /*<<< orphan*/  clean_timer; int /*<<< orphan*/  hash; int /*<<< orphan*/  list; } ;
struct vio_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct vnet_port* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct vnet_port*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC12(struct vio_dev *vdev)
{
	struct vnet_port *port = FUNC1(&vdev->dev);

	if (port) {
		FUNC0(&port->vio.timer);

		FUNC6(&port->napi);

		FUNC5(&port->list);
		FUNC3(&port->hash);

		FUNC10();
		FUNC0(&port->clean_timer);
		FUNC9(port);
		FUNC7(&port->napi);
		FUNC8(port);
		FUNC11(&port->vio);

		FUNC2(&vdev->dev, NULL);

		FUNC4(port);
	}
	return 0;
}