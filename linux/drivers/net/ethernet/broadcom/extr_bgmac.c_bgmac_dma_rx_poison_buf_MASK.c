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
struct device {int dummy; } ;
struct bgmac_slot_info {int /*<<< orphan*/  dma_addr; struct bgmac_rx_header* buf; } ;
struct bgmac_rx_header {void* flags; void* len; } ;

/* Variables and functions */
 int BGMAC_RX_BUF_OFFSET ; 
 int /*<<< orphan*/  BGMAC_RX_BUF_SIZE ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dma_dev,
				    struct bgmac_slot_info *slot)
{
	struct bgmac_rx_header *rx = slot->buf + BGMAC_RX_BUF_OFFSET;

	FUNC1(dma_dev, slot->dma_addr, BGMAC_RX_BUF_SIZE,
				DMA_FROM_DEVICE);
	rx->len = FUNC0(0xdead);
	rx->flags = FUNC0(0xbeef);
	FUNC2(dma_dev, slot->dma_addr, BGMAC_RX_BUF_SIZE,
				   DMA_FROM_DEVICE);
}