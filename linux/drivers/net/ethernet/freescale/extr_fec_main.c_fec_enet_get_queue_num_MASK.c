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
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int FEC_ENET_MAX_RX_QS ; 
 int FEC_ENET_MAX_TX_QS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int*) ; 

__attribute__((used)) static void
FUNC3(struct platform_device *pdev, int *num_tx, int *num_rx)
{
	struct device_node *np = pdev->dev.of_node;

	*num_tx = *num_rx = 1;

	if (!np || !FUNC1(np))
		return;

	/* parse the num of tx and rx queues */
	FUNC2(np, "fsl,num-tx-queues", num_tx);

	FUNC2(np, "fsl,num-rx-queues", num_rx);

	if (*num_tx < 1 || *num_tx > FEC_ENET_MAX_TX_QS) {
		FUNC0(&pdev->dev, "Invalid num_tx(=%d), fall back to 1\n",
			 *num_tx);
		*num_tx = 1;
		return;
	}

	if (*num_rx < 1 || *num_rx > FEC_ENET_MAX_RX_QS) {
		FUNC0(&pdev->dev, "Invalid num_rx(=%d), fall back to 1\n",
			 *num_rx);
		*num_rx = 1;
		return;
	}

}