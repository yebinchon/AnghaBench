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
struct port {int /*<<< orphan*/ * desc_tab; int /*<<< orphan*/  desc_tab_phys; int /*<<< orphan*/ ** tx_buff_tab; TYPE_1__* netdev; int /*<<< orphan*/ ** rx_buff_tab; } ;
struct desc {int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  buffer_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int RX_DESCS ; 
 int /*<<< orphan*/  RX_SIZE ; 
 int TX_DESCS ; 
 int /*<<< orphan*/ * dma_pool ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct port*,struct desc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ports_open ; 
 struct desc* FUNC5 (struct port*,int) ; 
 struct desc* FUNC6 (struct port*,int) ; 

__attribute__((used)) static void FUNC7(struct port *port)
{
	int i;

	if (port->desc_tab) {
		for (i = 0; i < RX_DESCS; i++) {
			struct desc *desc = FUNC5(port, i);
			buffer_t *buff = port->rx_buff_tab[i];
			if (buff) {
				FUNC2(&port->netdev->dev,
						 desc->data, RX_SIZE,
						 DMA_FROM_DEVICE);
				FUNC4(buff);
			}
		}
		for (i = 0; i < TX_DESCS; i++) {
			struct desc *desc = FUNC6(port, i);
			buffer_t *buff = port->tx_buff_tab[i];
			if (buff) {
				FUNC3(port, desc);
				FUNC4(buff);
			}
		}
		FUNC1(dma_pool, port->desc_tab, port->desc_tab_phys);
		port->desc_tab = NULL;
	}

	if (!ports_open && dma_pool) {
		FUNC0(dma_pool);
		dma_pool = NULL;
	}
}