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
typedef  int u32 ;
struct bcm_sysport_priv {unsigned int num_rx_bds; int /*<<< orphan*/  netdev; struct bcm_sysport_cb* rx_cbs; TYPE_1__* pdev; } ;
struct bcm_sysport_cb {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int RDMA_DISABLED ; 
 int /*<<< orphan*/  RDMA_STATUS ; 
 int /*<<< orphan*/  RX_BUF_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (struct bcm_sysport_cb*) ; 
 int /*<<< orphan*/  dma_addr ; 
 scalar_t__ FUNC1 (struct bcm_sysport_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC3 (struct bcm_sysport_cb*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sysport_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct bcm_sysport_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct bcm_sysport_priv *priv)
{
	struct bcm_sysport_cb *cb;
	unsigned int i;
	u32 reg;

	/* Caller should ensure RDMA is disabled */
	reg = FUNC6(priv, RDMA_STATUS);
	if (!(reg & RDMA_DISABLED))
		FUNC4(priv->netdev, "RDMA not stopped!\n");

	for (i = 0; i < priv->num_rx_bds; i++) {
		cb = &priv->rx_cbs[i];
		if (FUNC1(cb, dma_addr))
			FUNC2(&priv->pdev->dev,
					 FUNC1(cb, dma_addr),
					 RX_BUF_LENGTH, DMA_FROM_DEVICE);
		FUNC0(cb);
	}

	FUNC3(priv->rx_cbs);
	priv->rx_cbs = NULL;

	FUNC5(priv, hw, priv->netdev, "RDMA fini done\n");
}