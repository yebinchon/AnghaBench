#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct net_device {int /*<<< orphan*/  irq; } ;
struct TYPE_5__ {int /*<<< orphan*/  queue_dma; int /*<<< orphan*/  queue_addr; int /*<<< orphan*/  queue_len; } ;
struct ibmveth_adapter {int /*<<< orphan*/  bounce_buffer; TYPE_3__* netdev; int /*<<< orphan*/  bounce_buffer_dma; TYPE_2__* vdev; TYPE_4__* rx_buff_pool; TYPE_1__ rx_queue; scalar_t__ filter_list_addr; int /*<<< orphan*/  filter_list_dma; scalar_t__ buffer_list_addr; int /*<<< orphan*/  buffer_list_dma; int /*<<< orphan*/  pool_config; int /*<<< orphan*/  napi; } ;
struct device {int dummy; } ;
struct TYPE_8__ {scalar_t__ active; } ;
struct TYPE_7__ {int mtu; } ;
struct TYPE_6__ {struct device dev; int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 long H_BUSY ; 
 scalar_t__ FUNC0 (long) ; 
 long H_SUCCESS ; 
 int IBMVETH_BUFF_OH ; 
 int IBMVETH_NUM_BUFF_POOLS ; 
 int /*<<< orphan*/  VIO_IRQ_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 long FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ibmveth_adapter*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ibmveth_adapter*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,char*,long) ; 
 struct ibmveth_adapter* FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static int FUNC15(struct net_device *netdev)
{
	struct ibmveth_adapter *adapter = FUNC13(netdev);
	struct device *dev = &adapter->vdev->dev;
	long lpar_rc;
	int i;

	FUNC11(netdev, "close starting\n");

	FUNC10(&adapter->napi);

	if (!adapter->pool_config)
		FUNC14(netdev);

	FUNC6(adapter->vdev->unit_address, VIO_IRQ_DISABLE);

	do {
		lpar_rc = FUNC5(adapter->vdev->unit_address);
	} while (FUNC0(lpar_rc) || (lpar_rc == H_BUSY));

	if (lpar_rc != H_SUCCESS) {
		FUNC12(netdev, "h_free_logical_lan failed with %lx, "
			   "continuing with close\n", lpar_rc);
	}

	FUNC3(netdev->irq, netdev);

	FUNC8(adapter);

	FUNC2(dev, adapter->buffer_list_dma, 4096,
			 DMA_BIDIRECTIONAL);
	FUNC4((unsigned long)adapter->buffer_list_addr);

	FUNC2(dev, adapter->filter_list_dma, 4096,
			 DMA_BIDIRECTIONAL);
	FUNC4((unsigned long)adapter->filter_list_addr);

	FUNC1(dev, adapter->rx_queue.queue_len,
			  adapter->rx_queue.queue_addr,
			  adapter->rx_queue.queue_dma);

	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
		if (adapter->rx_buff_pool[i].active)
			FUNC7(adapter,
						 &adapter->rx_buff_pool[i]);

	FUNC2(&adapter->vdev->dev, adapter->bounce_buffer_dma,
			 adapter->netdev->mtu + IBMVETH_BUFF_OH,
			 DMA_BIDIRECTIONAL);
	FUNC9(adapter->bounce_buffer);

	FUNC11(netdev, "close complete\n");

	return 0;
}