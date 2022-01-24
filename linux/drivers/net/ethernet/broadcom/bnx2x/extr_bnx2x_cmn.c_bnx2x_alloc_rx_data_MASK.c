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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u16 ;
struct sw_rx_bd {int /*<<< orphan*/ * data; } ;
struct eth_rx_bd {void* addr_lo; void* addr_hi; } ;
struct bnx2x_fastpath {int /*<<< orphan*/  rx_buf_size; struct eth_rx_bd* rx_desc_ring; struct sw_rx_bd* rx_buf_ring; } ;
struct bnx2x {TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int ENOMEM ; 
 int NET_SKB_PAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (struct bnx2x_fastpath*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bnx2x_fastpath*,int /*<<< orphan*/ *) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sw_rx_bd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct bnx2x *bp, struct bnx2x_fastpath *fp,
			       u16 index, gfp_t gfp_mask)
{
	u8 *data;
	struct sw_rx_bd *rx_buf = &fp->rx_buf_ring[index];
	struct eth_rx_bd *rx_bd = &fp->rx_desc_ring[index];
	dma_addr_t mapping;

	data = FUNC3(fp, gfp_mask);
	if (FUNC9(data == NULL))
		return -ENOMEM;

	mapping = FUNC6(&bp->pdev->dev, data + NET_SKB_PAD,
				 fp->rx_buf_size,
				 DMA_FROM_DEVICE);
	if (FUNC9(FUNC7(&bp->pdev->dev, mapping))) {
		FUNC4(fp, data);
		FUNC0("Can't map rx data\n");
		return -ENOMEM;
	}

	rx_buf->data = data;
	FUNC8(rx_buf, mapping, mapping);

	rx_bd->addr_hi = FUNC5(FUNC1(mapping));
	rx_bd->addr_lo = FUNC5(FUNC2(mapping));

	return 0;
}