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
struct nfp_net_dp {int /*<<< orphan*/  rx_dma_dir; int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ dma_addr_t ;

/* Variables and functions */
 scalar_t__ NFP_NET_RX_BUF_HEADROOM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct nfp_net_dp *dp, dma_addr_t dma_addr,
				    unsigned int len)
{
	FUNC0(dp->dev, dma_addr - NFP_NET_RX_BUF_HEADROOM,
				len, dp->rx_dma_dir);
}