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
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct ena_com_aenq {int q_depth; int head; int phase; struct ena_aenq_handlers* aenq_handlers; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  entries; } ;
struct ena_com_dev {scalar_t__ reg_bar; struct ena_com_aenq aenq; int /*<<< orphan*/  dmadev; } ;
struct ena_aenq_handlers {int dummy; } ;
struct ena_admin_aenq_entry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int ENA_ASYNC_QUEUE_DEPTH ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENA_REGS_AENQ_BASE_HI_OFF ; 
 scalar_t__ ENA_REGS_AENQ_BASE_LO_OFF ; 
 int ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK ; 
 int ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK ; 
 int ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT ; 
 scalar_t__ ENA_REGS_AENQ_CAPS_OFF ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct ena_com_dev *dev,
				   struct ena_aenq_handlers *aenq_handlers)
{
	struct ena_com_aenq *aenq = &dev->aenq;
	u32 addr_low, addr_high, aenq_caps;
	u16 size;

	dev->aenq.q_depth = ENA_ASYNC_QUEUE_DEPTH;
	size = FUNC0(ENA_ASYNC_QUEUE_DEPTH);
	aenq->entries = FUNC3(dev->dmadev, size, &aenq->dma_addr,
					   GFP_KERNEL);

	if (!aenq->entries) {
		FUNC4("memory allocation failed\n");
		return -ENOMEM;
	}

	aenq->head = aenq->q_depth;
	aenq->phase = 1;

	addr_low = FUNC2(aenq->dma_addr);
	addr_high = FUNC1(aenq->dma_addr);

	FUNC6(addr_low, dev->reg_bar + ENA_REGS_AENQ_BASE_LO_OFF);
	FUNC6(addr_high, dev->reg_bar + ENA_REGS_AENQ_BASE_HI_OFF);

	aenq_caps = 0;
	aenq_caps |= dev->aenq.q_depth & ENA_REGS_AENQ_CAPS_AENQ_DEPTH_MASK;
	aenq_caps |= (sizeof(struct ena_admin_aenq_entry)
		      << ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_SHIFT) &
		     ENA_REGS_AENQ_CAPS_AENQ_ENTRY_SIZE_MASK;
	FUNC6(aenq_caps, dev->reg_bar + ENA_REGS_AENQ_CAPS_OFF);

	if (FUNC5(!aenq_handlers)) {
		FUNC4("aenq handlers pointer is NULL\n");
		return -EINVAL;
	}

	aenq->aenq_handlers = aenq_handlers;

	return 0;
}