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
struct nfp_net_rx_hash {int /*<<< orphan*/  hash; int /*<<< orphan*/  hash_type; } ;
struct TYPE_2__ {int flags; } ;
struct nfp_net_rx_desc {TYPE_1__ rxd; } ;
struct nfp_meta_parsed {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int PCIE_DESC_RX_RSS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,struct nfp_meta_parsed*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct net_device *netdev, struct nfp_meta_parsed *meta,
		      void *data, struct nfp_net_rx_desc *rxd)
{
	struct nfp_net_rx_hash *rx_hash = data;

	if (!(rxd->rxd.flags & PCIE_DESC_RX_RSS))
		return;

	FUNC1(netdev, meta, FUNC0(&rx_hash->hash_type),
			 &rx_hash->hash);
}