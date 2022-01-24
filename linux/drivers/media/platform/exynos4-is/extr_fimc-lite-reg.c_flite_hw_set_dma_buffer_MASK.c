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
typedef  int /*<<< orphan*/  u32 ;
struct flite_buffer {unsigned int index; int /*<<< orphan*/  paddr; } ;
struct fimc_lite {scalar_t__ regs; TYPE_1__* dd; } ;
struct TYPE_2__ {int max_dma_bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 scalar_t__ FLITE_REG_CIFCNTSEQ ; 
 scalar_t__ FLITE_REG_CIOSA ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC4(struct fimc_lite *dev, struct flite_buffer *buf)
{
	unsigned int index;
	u32 cfg;

	if (dev->dd->max_dma_bufs == 1)
		index = 0;
	else
		index = buf->index;

	if (index == 0)
		FUNC3(buf->paddr, dev->regs + FLITE_REG_CIOSA);
	else
		FUNC3(buf->paddr, dev->regs + FUNC1(index - 1));

	cfg = FUNC2(dev->regs + FLITE_REG_CIFCNTSEQ);
	cfg |= FUNC0(index);
	FUNC3(cfg, dev->regs + FLITE_REG_CIFCNTSEQ);
}