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
struct nfp_port {TYPE_1__* app; } ;
struct netdev_phys_item_id {int /*<<< orphan*/  id_len; int /*<<< orphan*/  id; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpp; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const**) ; 
 struct nfp_port* FUNC2 (struct net_device*) ; 

int FUNC3(struct net_device *netdev,
				struct netdev_phys_item_id *ppid)
{
	struct nfp_port *port;
	const u8 *serial;

	port = FUNC2(netdev);
	if (!port)
		return -EOPNOTSUPP;

	ppid->id_len = FUNC1(port->app->cpp, &serial);
	FUNC0(&ppid->id, serial, ppid->id_len);

	return 0;
}