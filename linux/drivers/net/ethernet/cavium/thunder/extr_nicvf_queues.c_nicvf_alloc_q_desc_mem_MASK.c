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
typedef  int /*<<< orphan*/  u64 ;
struct q_desc_mem {int q_len; int size; scalar_t__ dma; scalar_t__ phys_base; scalar_t__ unalign_base; scalar_t__ base; } ;
struct nicvf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct nicvf *nic, struct q_desc_mem *dmem,
				  int q_len, int desc_size, int align_bytes)
{
	dmem->q_len = q_len;
	dmem->size = (desc_size * q_len) + align_bytes;
	/* Save address, need it while freeing */
	dmem->unalign_base = FUNC1(&nic->pdev->dev, dmem->size,
						&dmem->dma, GFP_KERNEL);
	if (!dmem->unalign_base)
		return -ENOMEM;

	/* Align memory address for 'align_bytes' */
	dmem->phys_base = FUNC0((u64)dmem->dma, align_bytes);
	dmem->base = dmem->unalign_base + (dmem->phys_base - dmem->dma);
	return 0;
}