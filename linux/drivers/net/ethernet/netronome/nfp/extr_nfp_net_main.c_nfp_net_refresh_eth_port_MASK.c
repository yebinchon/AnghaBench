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
struct nfp_port {int /*<<< orphan*/  flags; TYPE_1__* app; } ;
struct nfp_eth_table {int dummy; } ;
struct nfp_cpp {int dummy; } ;
struct TYPE_2__ {struct nfp_cpp* cpp; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFP_PORT_CHANGED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_eth_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_cpp*,char*) ; 
 struct nfp_eth_table* FUNC3 (struct nfp_cpp*) ; 
 int FUNC4 (struct nfp_cpp*,struct nfp_port*,struct nfp_eth_table*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC6(struct nfp_port *port)
{
	struct nfp_cpp *cpp = port->app->cpp;
	struct nfp_eth_table *eth_table;
	int ret;

	FUNC0(NFP_PORT_CHANGED, &port->flags);

	eth_table = FUNC3(cpp);
	if (!eth_table) {
		FUNC5(NFP_PORT_CHANGED, &port->flags);
		FUNC2(cpp, "Error refreshing port state table!\n");
		return -EIO;
	}

	ret = FUNC4(cpp, port, eth_table);

	FUNC1(eth_table);

	return ret;
}