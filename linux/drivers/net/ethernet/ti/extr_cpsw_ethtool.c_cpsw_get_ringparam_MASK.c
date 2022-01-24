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
struct net_device {int dummy; } ;
struct ethtool_ringparam {int /*<<< orphan*/  rx_pending; void* rx_max_pending; int /*<<< orphan*/  tx_pending; void* tx_max_pending; } ;
struct cpsw_priv {struct cpsw_common* cpsw; } ;
struct cpsw_common {void* descs_pool_size; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 void* CPSW_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct cpsw_priv* FUNC2 (struct net_device*) ; 

void FUNC3(struct net_device *ndev,
			struct ethtool_ringparam *ering)
{
	struct cpsw_priv *priv = FUNC2(ndev);
	struct cpsw_common *cpsw = priv->cpsw;

	/* not supported */
	ering->tx_max_pending = cpsw->descs_pool_size - CPSW_MAX_QUEUES;
	ering->tx_pending = FUNC1(cpsw->dma);
	ering->rx_max_pending = cpsw->descs_pool_size - CPSW_MAX_QUEUES;
	ering->rx_pending = FUNC0(cpsw->dma);
}