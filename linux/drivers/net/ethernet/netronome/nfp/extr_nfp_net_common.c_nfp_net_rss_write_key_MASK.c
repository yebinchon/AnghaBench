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
struct nfp_net {scalar_t__ rss_key; } ;

/* Variables and functions */
 scalar_t__ NFP_NET_CFG_RSS_KEY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FUNC1 (struct nfp_net*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(struct nfp_net *nn)
{
	int i;

	for (i = 0; i < FUNC1(nn); i += 4)
		FUNC2(nn, NFP_NET_CFG_RSS_KEY + i,
			  FUNC0(nn->rss_key + i));
}