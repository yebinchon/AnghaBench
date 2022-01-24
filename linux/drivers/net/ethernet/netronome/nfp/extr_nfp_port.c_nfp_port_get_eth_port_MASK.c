#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfp_port {int /*<<< orphan*/  flags; } ;
struct nfp_eth_table_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_PORT_CHANGED ; 
 struct nfp_eth_table_port* FUNC0 (struct nfp_port*) ; 
 scalar_t__ FUNC1 (struct nfp_port*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

struct nfp_eth_table_port *FUNC3(struct nfp_port *port)
{
	if (!FUNC0(port))
		return NULL;

	if (FUNC2(NFP_PORT_CHANGED, &port->flags))
		if (FUNC1(port))
			return NULL;

	return FUNC0(port);
}