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
typedef  int /*<<< orphan*/  u8 ;
struct ethhdr {int /*<<< orphan*/  h_proto; int /*<<< orphan*/  h_dest; int /*<<< orphan*/  h_source; } ;
struct TYPE_3__ {struct ethhdr ether_spec; } ;
struct TYPE_4__ {struct ethhdr ether_spec; } ;
struct ethtool_rx_flow_spec {TYPE_1__ h_u; TYPE_2__ m_u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dmac_47_16 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethertype ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smac_47_16 ; 

__attribute__((used)) static void
FUNC5(void *headers_c, void *headers_v, struct ethtool_rx_flow_spec *fs)
{
	struct ethhdr *eth_mask = &fs->m_u.ether_spec;
	struct ethhdr *eth_val = &fs->h_u.ether_spec;

	FUNC3((u8 *)eth_mask, (u8 *)eth_val, sizeof(*eth_mask));
	FUNC2(FUNC0(headers_c, smac_47_16), eth_mask->h_source);
	FUNC2(FUNC0(headers_v, smac_47_16), eth_val->h_source);
	FUNC2(FUNC0(headers_c, dmac_47_16), eth_mask->h_dest);
	FUNC2(FUNC0(headers_v, dmac_47_16), eth_val->h_dest);
	FUNC1(headers_c, ethertype, FUNC4(eth_mask->h_proto));
	FUNC1(headers_v, ethertype, FUNC4(eth_val->h_proto));
}