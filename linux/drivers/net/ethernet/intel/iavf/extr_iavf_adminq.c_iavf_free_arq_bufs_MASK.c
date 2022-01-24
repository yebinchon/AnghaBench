#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * arq_bi; } ;
struct TYPE_5__ {int /*<<< orphan*/  dma_head; int /*<<< orphan*/  desc_buf; TYPE_1__ r; } ;
struct TYPE_6__ {int num_arq_entries; TYPE_2__ arq; } ;
struct iavf_hw {TYPE_3__ aq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iavf_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct iavf_hw*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct iavf_hw *hw)
{
	int i;

	/* free descriptors */
	for (i = 0; i < hw->aq.num_arq_entries; i++)
		FUNC0(hw, &hw->aq.arq.r.arq_bi[i]);

	/* free the descriptor memory */
	FUNC0(hw, &hw->aq.arq.desc_buf);

	/* free the dma header */
	FUNC1(hw, &hw->aq.arq.dma_head);
}