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
struct nfp_net {scalar_t__ rss_itbl; } ;

/* Variables and functions */
 scalar_t__ NFP_NET_CFG_RSS_ITBL ; 
 int NFP_NET_CFG_RSS_ITBL_SZ ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC2(struct nfp_net *nn)
{
	int i;

	for (i = 0; i < NFP_NET_CFG_RSS_ITBL_SZ; i += 4)
		FUNC1(nn, NFP_NET_CFG_RSS_ITBL + i,
			  FUNC0(nn->rss_itbl + i));
}