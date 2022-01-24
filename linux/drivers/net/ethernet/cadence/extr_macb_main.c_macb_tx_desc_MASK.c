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
struct macb_queue {struct macb_dma_desc* tx_ring; int /*<<< orphan*/  bp; } ;
struct macb_dma_desc {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct macb_dma_desc *FUNC2(struct macb_queue *queue,
					  unsigned int index)
{
	index = FUNC1(queue->bp, index);
	index = FUNC0(queue->bp, index);
	return &queue->tx_ring[index];
}