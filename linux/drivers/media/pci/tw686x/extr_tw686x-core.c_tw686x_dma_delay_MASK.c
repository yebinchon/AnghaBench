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
struct tw686x_dev {int /*<<< orphan*/  lock; scalar_t__ pending_dma_cmd; scalar_t__ pending_dma_en; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_CHANNEL_ENABLE ; 
 int /*<<< orphan*/  DMA_CMD ; 
 struct tw686x_dev* dev ; 
 int /*<<< orphan*/  dma_delay_timer ; 
 struct tw686x_dev* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct tw686x_dev*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct tw686x_dev *dev = FUNC0(dev, t, dma_delay_timer);
	unsigned long flags;

	FUNC2(&dev->lock, flags);

	FUNC1(dev, DMA_CHANNEL_ENABLE, dev->pending_dma_en);
	FUNC1(dev, DMA_CMD, dev->pending_dma_cmd);
	dev->pending_dma_en = 0;
	dev->pending_dma_cmd = 0;

	FUNC3(&dev->lock, flags);
}