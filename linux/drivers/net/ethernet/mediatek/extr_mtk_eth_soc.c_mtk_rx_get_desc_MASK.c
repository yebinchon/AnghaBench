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
struct mtk_rx_dma {void* rxd4; void* rxd3; void* rxd2; void* rxd1; } ;

/* Variables and functions */
 void* FUNC0 (void*) ; 

__attribute__((used)) static inline void FUNC1(struct mtk_rx_dma *rxd,
				   struct mtk_rx_dma *dma_rxd)
{
	rxd->rxd1 = FUNC0(dma_rxd->rxd1);
	rxd->rxd2 = FUNC0(dma_rxd->rxd2);
	rxd->rxd3 = FUNC0(dma_rxd->rxd3);
	rxd->rxd4 = FUNC0(dma_rxd->rxd4);
}