#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct rocker_dma_ring_info {size_t size; unsigned int type; int /*<<< orphan*/  mapaddr; int /*<<< orphan*/ * desc; TYPE_1__* desc_info; scalar_t__ tail; scalar_t__ head; } ;
struct rocker {int /*<<< orphan*/  pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/ * desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ROCKER_DMA_DESC_CTRL_RESET ; 
 TYPE_1__* FUNC4 (size_t,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct rocker const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const struct rocker *rocker,
				  unsigned int type,
				  size_t size,
				  struct rocker_dma_ring_info *info)
{
	int i;

	FUNC0(size != FUNC7(size));
	info->size = size;
	info->type = type;
	info->head = 0;
	info->tail = 0;
	info->desc_info = FUNC4(info->size, sizeof(*info->desc_info),
				  GFP_KERNEL);
	if (!info->desc_info)
		return -ENOMEM;

	info->desc = FUNC6(rocker->pdev,
					  info->size * sizeof(*info->desc),
					  &info->mapaddr);
	if (!info->desc) {
		FUNC5(info->desc_info);
		return -ENOMEM;
	}

	for (i = 0; i < info->size; i++)
		info->desc_info[i].desc = &info->desc[i];

	FUNC8(rocker, FUNC2(info->type),
		       ROCKER_DMA_DESC_CTRL_RESET);
	FUNC9(rocker, FUNC1(info->type), info->mapaddr);
	FUNC8(rocker, FUNC3(info->type), info->size);

	return 0;
}