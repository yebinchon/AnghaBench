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
struct nfp_eth_table_port {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FEC_BASER ; 
 int /*<<< orphan*/  FEC_NONE ; 
 int /*<<< orphan*/  FEC_RS ; 
 unsigned int NFP_FEC_BASER ; 
 unsigned int NFP_FEC_REED_SOLOMON ; 
 int /*<<< orphan*/  advertising ; 
 int /*<<< orphan*/  FUNC0 (struct ethtool_link_ksettings*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_eth_table_port*) ; 
 unsigned int FUNC2 (struct nfp_eth_table_port*) ; 
 int /*<<< orphan*/  supported ; 

__attribute__((used)) static void
FUNC3(struct nfp_eth_table_port *eth_port,
			  struct ethtool_link_ksettings *c)
{
	unsigned int modes;

	FUNC0(c, supported, FEC_NONE);
	if (!FUNC1(eth_port)) {
		FUNC0(c, advertising, FEC_NONE);
		return;
	}

	modes = FUNC2(eth_port);
	if (modes & NFP_FEC_BASER) {
		FUNC0(c, supported, FEC_BASER);
		FUNC0(c, advertising, FEC_BASER);
	}

	if (modes & NFP_FEC_REED_SOLOMON) {
		FUNC0(c, supported, FEC_RS);
		FUNC0(c, advertising, FEC_RS);
	}
}