#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct port {TYPE_1__** rx_buff_tab; TYPE_3__* netdev; TYPE_1__** tx_buff_tab; TYPE_1__** desc_tab; int /*<<< orphan*/  desc_tab_phys; } ;
struct desc {int /*<<< orphan*/  data; int /*<<< orphan*/  buf_len; } ;
struct TYPE_8__ {void* data; } ;
typedef  TYPE_1__ buffer_t ;
struct TYPE_9__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DRV_NAME ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MAX_MRU ; 
 int /*<<< orphan*/  NET_IP_ALIGN ; 
 int POOL_ALLOC_SIZE ; 
 int /*<<< orphan*/  RX_BUFF_SIZE ; 
 int RX_DESCS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dma_pool ; 
 TYPE_1__** FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ports_open ; 
 struct desc* FUNC8 (struct port*,int) ; 

__attribute__((used)) static int FUNC9(struct port *port)
{
	int i;

	if (!ports_open) {
		dma_pool = FUNC3(DRV_NAME, &port->netdev->dev,
					   POOL_ALLOC_SIZE, 32, 0);
		if (!dma_pool)
			return -ENOMEM;
	}

	if (!(port->desc_tab = FUNC2(dma_pool, GFP_KERNEL,
					      &port->desc_tab_phys)))
		return -ENOMEM;
	FUNC6(port->desc_tab, 0, POOL_ALLOC_SIZE);
	FUNC6(port->rx_buff_tab, 0, sizeof(port->rx_buff_tab)); /* tables */
	FUNC6(port->tx_buff_tab, 0, sizeof(port->tx_buff_tab));

	/* Setup RX buffers */
	for (i = 0; i < RX_DESCS; i++) {
		struct desc *desc = FUNC8(port, i);
		buffer_t *buff; /* skb or kmalloc()ated memory */
		void *data;
#ifdef __ARMEB__
		if (!(buff = netdev_alloc_skb(port->netdev, RX_BUFF_SIZE)))
			return -ENOMEM;
		data = buff->data;
#else
		if (!(buff = FUNC5(RX_BUFF_SIZE, GFP_KERNEL)))
			return -ENOMEM;
		data = buff;
#endif
		desc->buf_len = MAX_MRU;
		desc->data = FUNC0(&port->netdev->dev, data,
					    RX_BUFF_SIZE, DMA_FROM_DEVICE);
		if (FUNC1(&port->netdev->dev, desc->data)) {
			FUNC4(buff);
			return -EIO;
		}
		desc->data += NET_IP_ALIGN;
		port->rx_buff_tab[i] = buff;
	}

	return 0;
}