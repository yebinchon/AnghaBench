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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct nfp_net {int rss_hfunc; int rss_cfg; int /*<<< orphan*/  rss_key; TYPE_1__ dp; } ;

/* Variables and functions */
 unsigned long ETH_RSS_HASH_TOP_BIT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  NFP_NET_CFG_RSS_CAP ; 
 int /*<<< orphan*/  NFP_NET_CFG_RSS_CAP_HFUNC ; 
 int /*<<< orphan*/  NFP_NET_CFG_RSS_HFUNC ; 
 unsigned long NFP_NET_CFG_RSS_HFUNCS ; 
 int NFP_NET_CFG_RSS_IPV4_TCP ; 
 int NFP_NET_CFG_RSS_IPV6_TCP ; 
 int NFP_NET_CFG_RSS_MASK ; 
 int /*<<< orphan*/  NFP_NET_CFG_RSS_TOEPLITZ ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned long FUNC3 (unsigned long*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfp_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct nfp_net *nn)
{
	unsigned long func_bit, rss_cap_hfunc;
	u32 reg;

	/* Read the RSS function capability and select first supported func */
	reg = FUNC7(nn, NFP_NET_CFG_RSS_CAP);
	rss_cap_hfunc =	FUNC0(NFP_NET_CFG_RSS_CAP_HFUNC, reg);
	if (!rss_cap_hfunc)
		rss_cap_hfunc =	FUNC0(NFP_NET_CFG_RSS_CAP_HFUNC,
					  NFP_NET_CFG_RSS_TOEPLITZ);

	func_bit = FUNC3(&rss_cap_hfunc, NFP_NET_CFG_RSS_HFUNCS);
	if (func_bit == NFP_NET_CFG_RSS_HFUNCS) {
		FUNC2(nn->dp.dev,
			 "Bad RSS config, defaulting to Toeplitz hash\n");
		func_bit = ETH_RSS_HASH_TOP_BIT;
	}
	nn->rss_hfunc = 1 << func_bit;

	FUNC4(nn->rss_key, FUNC6(nn));

	FUNC5(nn);

	/* Enable IPv4/IPv6 TCP by default */
	nn->rss_cfg = NFP_NET_CFG_RSS_IPV4_TCP |
		      NFP_NET_CFG_RSS_IPV6_TCP |
		      FUNC1(NFP_NET_CFG_RSS_HFUNC, nn->rss_hfunc) |
		      NFP_NET_CFG_RSS_MASK;
}