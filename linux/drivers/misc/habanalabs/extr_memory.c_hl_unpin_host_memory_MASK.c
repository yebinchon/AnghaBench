#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct hl_userptr {TYPE_2__* sgt; int /*<<< orphan*/  job_node; int /*<<< orphan*/  vec; int /*<<< orphan*/  dir; scalar_t__ dma_mapped; } ;
struct hl_device {TYPE_1__* asic_funcs; } ;
struct TYPE_5__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hl_dma_unmap_sg ) (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page**) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page** FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hl_device*,struct hl_userptr*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC11(struct hl_device *hdev, struct hl_userptr *userptr)
{
	struct page **pages;

	FUNC4(hdev, userptr);

	if (userptr->dma_mapped)
		hdev->asic_funcs->hl_dma_unmap_sg(hdev,
				userptr->sgt->sgl,
				userptr->sgt->nents,
				userptr->dir);

	pages = FUNC3(userptr->vec);
	if (!FUNC0(pages)) {
		int i;

		for (i = 0; i < FUNC1(userptr->vec); i++)
			FUNC8(pages[i]);
	}
	FUNC7(userptr->vec);
	FUNC2(userptr->vec);

	FUNC6(&userptr->job_node);

	FUNC9(userptr->sgt);
	FUNC5(userptr->sgt);

	return 0;
}