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
struct scif_hw_dev {int dummy; } ;
struct dma_chan {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct scif_hw_dev*,struct dma_chan*) ; 

int FUNC1(struct scif_hw_dev *sdev, struct dma_chan *chan)
{
	if (!chan)
		return -EINVAL;
	return FUNC0(sdev, chan);
}