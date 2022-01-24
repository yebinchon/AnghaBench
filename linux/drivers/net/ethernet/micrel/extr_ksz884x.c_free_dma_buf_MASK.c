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
struct ksz_dma_buf {scalar_t__ dma; int /*<<< orphan*/ * skb; int /*<<< orphan*/  len; } ;
struct dev_info {int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct dev_info *adapter, struct ksz_dma_buf *dma_buf,
	int direction)
{
	FUNC1(adapter->pdev, dma_buf->dma, dma_buf->len, direction);
	FUNC0(dma_buf->skb);
	dma_buf->skb = NULL;
	dma_buf->dma = 0;
}