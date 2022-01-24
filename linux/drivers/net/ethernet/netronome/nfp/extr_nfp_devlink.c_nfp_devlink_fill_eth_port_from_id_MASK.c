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
struct nfp_port {int dummy; } ;
struct nfp_pf {int dummy; } ;
struct nfp_eth_table_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_PORT_PHYS_PORT ; 
 int FUNC0 (struct nfp_port*,struct nfp_eth_table_port*) ; 
 struct nfp_port* FUNC1 (struct nfp_pf*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int
FUNC2(struct nfp_pf *pf, unsigned int port_index,
				  struct nfp_eth_table_port *copy)
{
	struct nfp_port *port;

	port = FUNC1(pf, NFP_PORT_PHYS_PORT, port_index);

	return FUNC0(port, copy);
}