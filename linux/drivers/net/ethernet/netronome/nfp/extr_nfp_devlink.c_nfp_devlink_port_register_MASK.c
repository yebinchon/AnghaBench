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
typedef  int /*<<< orphan*/  u8 ;
struct nfp_port {int /*<<< orphan*/  eth_id; int /*<<< orphan*/  dl_port; TYPE_1__* app; } ;
struct nfp_eth_table_port {int /*<<< orphan*/  label_subport; int /*<<< orphan*/  is_split; int /*<<< orphan*/  label_port; } ;
struct nfp_app {int /*<<< orphan*/  pf; } ;
struct devlink {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEVLINK_PORT_FLAVOUR_PHYSICAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int FUNC1 (struct devlink*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 int FUNC3 (struct nfp_port*,struct nfp_eth_table_port*) ; 
 struct devlink* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct nfp_app *app, struct nfp_port *port)
{
	struct nfp_eth_table_port eth_port;
	struct devlink *devlink;
	const u8 *serial;
	int serial_len;
	int ret;

	FUNC5();
	ret = FUNC3(port, &eth_port);
	FUNC6();
	if (ret)
		return ret;

	serial_len = FUNC2(port->app->cpp, &serial);
	FUNC0(&port->dl_port, DEVLINK_PORT_FLAVOUR_PHYSICAL,
			       eth_port.label_port, eth_port.is_split,
			       eth_port.label_subport, serial, serial_len);

	devlink = FUNC4(app->pf);

	return FUNC1(devlink, &port->dl_port, port->eth_id);
}