#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct devlink_port {int dummy; } ;
struct nsim_dev_port {unsigned int port_index; int /*<<< orphan*/  list; TYPE_2__* ns; struct devlink_port devlink_port; } ;
struct TYPE_5__ {int /*<<< orphan*/  id_len; int /*<<< orphan*/  id; } ;
struct nsim_dev {int /*<<< orphan*/  port_list; TYPE_1__ switch_id; } ;
struct TYPE_6__ {int /*<<< orphan*/  netdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_PHYSICAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink_port*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct devlink_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct devlink_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct nsim_dev_port*) ; 
 struct nsim_dev_port* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC9 (struct nsim_dev*,struct nsim_dev_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct nsim_dev_port*) ; 
 int FUNC11 (struct nsim_dev*,struct nsim_dev_port*) ; 
 int /*<<< orphan*/  FUNC12 (struct nsim_dev*) ; 

__attribute__((used)) static int FUNC13(struct nsim_dev *nsim_dev,
			       unsigned int port_index)
{
	struct nsim_dev_port *nsim_dev_port;
	struct devlink_port *devlink_port;
	int err;

	nsim_dev_port = FUNC7(sizeof(*nsim_dev_port), GFP_KERNEL);
	if (!nsim_dev_port)
		return -ENOMEM;
	nsim_dev_port->port_index = port_index;

	devlink_port = &nsim_dev_port->devlink_port;
	FUNC2(devlink_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
			       port_index + 1, 0, 0,
			       nsim_dev->switch_id.id,
			       nsim_dev->switch_id.id_len);
	err = FUNC3(FUNC12(nsim_dev), devlink_port,
				    port_index);
	if (err)
		goto err_port_free;

	err = FUNC11(nsim_dev, nsim_dev_port);
	if (err)
		goto err_dl_port_unregister;

	nsim_dev_port->ns = FUNC9(nsim_dev, nsim_dev_port);
	if (FUNC0(nsim_dev_port->ns)) {
		err = FUNC1(nsim_dev_port->ns);
		goto err_port_debugfs_exit;
	}

	FUNC4(devlink_port, nsim_dev_port->ns->netdev);
	FUNC8(&nsim_dev_port->list, &nsim_dev->port_list);

	return 0;

err_port_debugfs_exit:
	FUNC10(nsim_dev_port);
err_dl_port_unregister:
	FUNC5(devlink_port);
err_port_free:
	FUNC6(nsim_dev_port);
	return err;
}