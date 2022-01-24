#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct sk_buff {int dummy; } ;
struct ibmveth_adapter {TYPE_2__* rx_buff_pool; TYPE_1__* vdev; } ;
struct TYPE_4__ {unsigned int size; unsigned int producer_index; unsigned int* free_map; int /*<<< orphan*/  available; int /*<<< orphan*/  buff_size; int /*<<< orphan*/ * dma_addr; struct sk_buff** skbuff; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 unsigned int IBMVETH_NUM_BUFF_POOLS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(struct ibmveth_adapter *adapter,
					    u64 correlator)
{
	unsigned int pool  = correlator >> 32;
	unsigned int index = correlator & 0xffffffffUL;
	unsigned int free_index;
	struct sk_buff *skb;

	FUNC0(pool >= IBMVETH_NUM_BUFF_POOLS);
	FUNC0(index >= adapter->rx_buff_pool[pool].size);

	skb = adapter->rx_buff_pool[pool].skbuff[index];

	FUNC0(skb == NULL);

	adapter->rx_buff_pool[pool].skbuff[index] = NULL;

	FUNC2(&adapter->vdev->dev,
			 adapter->rx_buff_pool[pool].dma_addr[index],
			 adapter->rx_buff_pool[pool].buff_size,
			 DMA_FROM_DEVICE);

	free_index = adapter->rx_buff_pool[pool].producer_index;
	adapter->rx_buff_pool[pool].producer_index++;
	if (adapter->rx_buff_pool[pool].producer_index >=
	    adapter->rx_buff_pool[pool].size)
		adapter->rx_buff_pool[pool].producer_index = 0;
	adapter->rx_buff_pool[pool].free_map[free_index] = index;

	FUNC3();

	FUNC1(&(adapter->rx_buff_pool[pool].available));
}