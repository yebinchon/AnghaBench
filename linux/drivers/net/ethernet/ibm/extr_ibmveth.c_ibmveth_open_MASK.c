#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int flags_len; int /*<<< orphan*/  address; } ;
union ibmveth_buf_desc {int /*<<< orphan*/  desc; TYPE_1__ fields; } ;
typedef  int /*<<< orphan*/  u64 ;
struct net_device {int mtu; int /*<<< orphan*/  irq; int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct ibmveth_rx_q_entry {int dummy; } ;
struct TYPE_7__ {int queue_len; int num_slots; int toggle; int /*<<< orphan*/  queue_dma; int /*<<< orphan*/  queue_addr; scalar_t__ index; } ;
struct ibmveth_adapter {int /*<<< orphan*/  napi; void* buffer_list_addr; void* filter_list_addr; TYPE_2__ rx_queue; void* buffer_list_dma; void* filter_list_dma; TYPE_4__* rx_buff_pool; void* bounce_buffer; void* bounce_buffer_dma; TYPE_3__* vdev; } ;
struct device {int dummy; } ;
struct TYPE_9__ {scalar_t__ active; scalar_t__ size; } ;
struct TYPE_8__ {struct device dev; int /*<<< orphan*/  unit_address; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int ENONET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long H_BUSY ; 
 scalar_t__ FUNC0 (unsigned long) ; 
 unsigned long H_SUCCESS ; 
 int IBMVETH_BUFF_OH ; 
 int IBMVETH_BUF_VALID ; 
 int IBMVETH_NUM_BUFF_POOLS ; 
 int /*<<< orphan*/  VIO_IRQ_DISABLE ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC3 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ibmveth_adapter*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct net_device*) ; 
 unsigned long FUNC15 (struct ibmveth_adapter*,union ibmveth_buf_desc,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (void*) ; 
 void* FUNC17 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*,char*,...) ; 
 struct ibmveth_adapter* FUNC22 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC23 (struct net_device*) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,struct net_device*),int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct net_device*) ; 

__attribute__((used)) static int FUNC25(struct net_device *netdev)
{
	struct ibmveth_adapter *adapter = FUNC22(netdev);
	u64 mac_address;
	int rxq_entries = 1;
	unsigned long lpar_rc;
	int rc;
	union ibmveth_buf_desc rxq_desc;
	int i;
	struct device *dev;

	FUNC20(netdev, "open starting\n");

	FUNC19(&adapter->napi);

	for(i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++)
		rxq_entries += adapter->rx_buff_pool[i].size;

	rc = -ENOMEM;
	adapter->buffer_list_addr = (void*) FUNC8(GFP_KERNEL);
	if (!adapter->buffer_list_addr) {
		FUNC21(netdev, "unable to allocate list pages\n");
		goto out;
	}

	adapter->filter_list_addr = (void*) FUNC8(GFP_KERNEL);
	if (!adapter->filter_list_addr) {
		FUNC21(netdev, "unable to allocate filter pages\n");
		goto out_free_buffer_list;
	}

	dev = &adapter->vdev->dev;

	adapter->rx_queue.queue_len = sizeof(struct ibmveth_rx_q_entry) *
						rxq_entries;
	adapter->rx_queue.queue_addr =
		FUNC1(dev, adapter->rx_queue.queue_len,
				   &adapter->rx_queue.queue_dma, GFP_KERNEL);
	if (!adapter->rx_queue.queue_addr)
		goto out_free_filter_list;

	adapter->buffer_list_dma = FUNC3(dev,
			adapter->buffer_list_addr, 4096, DMA_BIDIRECTIONAL);
	if (FUNC4(dev, adapter->buffer_list_dma)) {
		FUNC21(netdev, "unable to map buffer list pages\n");
		goto out_free_queue_mem;
	}

	adapter->filter_list_dma = FUNC3(dev,
			adapter->filter_list_addr, 4096, DMA_BIDIRECTIONAL);
	if (FUNC4(dev, adapter->filter_list_dma)) {
		FUNC21(netdev, "unable to map filter list pages\n");
		goto out_unmap_buffer_list;
	}

	adapter->rx_queue.index = 0;
	adapter->rx_queue.num_slots = rxq_entries;
	adapter->rx_queue.toggle = 1;

	mac_address = FUNC12(netdev->dev_addr);

	rxq_desc.fields.flags_len = IBMVETH_BUF_VALID |
					adapter->rx_queue.queue_len;
	rxq_desc.fields.address = adapter->rx_queue.queue_dma;

	FUNC20(netdev, "buffer list @ 0x%p\n", adapter->buffer_list_addr);
	FUNC20(netdev, "filter list @ 0x%p\n", adapter->filter_list_addr);
	FUNC20(netdev, "receive q   @ 0x%p\n", adapter->rx_queue.queue_addr);

	FUNC10(adapter->vdev->unit_address, VIO_IRQ_DISABLE);

	lpar_rc = FUNC15(adapter, rxq_desc, mac_address);

	if (lpar_rc != H_SUCCESS) {
		FUNC21(netdev, "h_register_logical_lan failed with %ld\n",
			   lpar_rc);
		FUNC21(netdev, "buffer TCE:0x%llx filter TCE:0x%llx rxq "
			   "desc:0x%llx MAC:0x%llx\n",
				     adapter->buffer_list_dma,
				     adapter->filter_list_dma,
				     rxq_desc.desc,
				     mac_address);
		rc = -ENONET;
		goto out_unmap_filter_list;
	}

	for (i = 0; i < IBMVETH_NUM_BUFF_POOLS; i++) {
		if (!adapter->rx_buff_pool[i].active)
			continue;
		if (FUNC11(&adapter->rx_buff_pool[i])) {
			FUNC21(netdev, "unable to alloc pool\n");
			adapter->rx_buff_pool[i].active = 0;
			rc = -ENOMEM;
			goto out_free_buffer_pools;
		}
	}

	FUNC20(netdev, "registering irq 0x%x\n", netdev->irq);
	rc = FUNC24(netdev->irq, ibmveth_interrupt, 0, netdev->name,
			 netdev);
	if (rc != 0) {
		FUNC21(netdev, "unable to request irq 0x%x, rc %d\n",
			   netdev->irq, rc);
		do {
			lpar_rc = FUNC9(adapter->vdev->unit_address);
		} while (FUNC0(lpar_rc) || (lpar_rc == H_BUSY));

		goto out_free_buffer_pools;
	}

	rc = -ENOMEM;
	adapter->bounce_buffer =
	    FUNC17(netdev->mtu + IBMVETH_BUFF_OH, GFP_KERNEL);
	if (!adapter->bounce_buffer)
		goto out_free_irq;

	adapter->bounce_buffer_dma =
	    FUNC3(&adapter->vdev->dev, adapter->bounce_buffer,
			   netdev->mtu + IBMVETH_BUFF_OH, DMA_BIDIRECTIONAL);
	if (FUNC4(dev, adapter->bounce_buffer_dma)) {
		FUNC21(netdev, "unable to map bounce buffer\n");
		goto out_free_bounce_buffer;
	}

	FUNC20(netdev, "initial replenish cycle\n");
	FUNC14(netdev->irq, netdev);

	FUNC23(netdev);

	FUNC20(netdev, "open complete\n");

	return 0;

out_free_bounce_buffer:
	FUNC16(adapter->bounce_buffer);
out_free_irq:
	FUNC6(netdev->irq, netdev);
out_free_buffer_pools:
	while (--i >= 0) {
		if (adapter->rx_buff_pool[i].active)
			FUNC13(adapter,
						 &adapter->rx_buff_pool[i]);
	}
out_unmap_filter_list:
	FUNC5(dev, adapter->filter_list_dma, 4096,
			 DMA_BIDIRECTIONAL);
out_unmap_buffer_list:
	FUNC5(dev, adapter->buffer_list_dma, 4096,
			 DMA_BIDIRECTIONAL);
out_free_queue_mem:
	FUNC2(dev, adapter->rx_queue.queue_len,
			  adapter->rx_queue.queue_addr,
			  adapter->rx_queue.queue_dma);
out_free_filter_list:
	FUNC7((unsigned long)adapter->filter_list_addr);
out_free_buffer_list:
	FUNC7((unsigned long)adapter->buffer_list_addr);
out:
	FUNC18(&adapter->napi);
	return rc;
}