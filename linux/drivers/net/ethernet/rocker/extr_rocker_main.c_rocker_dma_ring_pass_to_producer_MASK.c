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
struct rocker_dma_ring_info {int size; int /*<<< orphan*/ * desc_info; scalar_t__ tail; scalar_t__ head; } ;
struct rocker {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rocker const*,struct rocker_dma_ring_info*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(const struct rocker *rocker,
					     struct rocker_dma_ring_info *info)
{
	int i;

	FUNC0(info->head || info->tail);

	/* When ring is consumer, we need to advance head for each desc.
	 * That tells hw that the desc is ready to be used by it.
	 */
	for (i = 0; i < info->size - 1; i++)
		FUNC2(rocker, info, &info->desc_info[i]);
	FUNC1(&info->desc_info[i]);
}