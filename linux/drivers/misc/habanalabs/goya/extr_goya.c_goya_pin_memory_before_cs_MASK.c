#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct packet_lin_dma {int /*<<< orphan*/  tsize; } ;
struct hl_userptr {int dma_mapped; int dir; TYPE_2__* sgt; int /*<<< orphan*/  job_node; } ;
struct hl_device {int /*<<< orphan*/  dev; TYPE_1__* asic_funcs; } ;
struct hl_cs_parser {int /*<<< orphan*/  patched_cb_size; int /*<<< orphan*/  job_userptr_list; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_4__ {int /*<<< orphan*/  nents; int /*<<< orphan*/  sgl; } ;
struct TYPE_3__ {int (* asic_dma_map_sg ) (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct hl_device*,TYPE_2__*) ; 
 int FUNC2 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hl_userptr*) ; 
 int /*<<< orphan*/  FUNC3 (struct hl_device*,struct hl_userptr*) ; 
 scalar_t__ FUNC4 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hl_userptr**) ; 
 int /*<<< orphan*/  FUNC5 (struct hl_userptr*) ; 
 struct hl_userptr* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct hl_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(struct hl_device *hdev,
				struct hl_cs_parser *parser,
				struct packet_lin_dma *user_dma_pkt,
				u64 addr, enum dma_data_direction dir)
{
	struct hl_userptr *userptr;
	int rc;

	if (FUNC4(hdev, addr, FUNC7(user_dma_pkt->tsize),
			parser->job_userptr_list, &userptr))
		goto already_pinned;

	userptr = FUNC6(sizeof(*userptr), GFP_ATOMIC);
	if (!userptr)
		return -ENOMEM;

	rc = FUNC2(hdev, addr, FUNC7(user_dma_pkt->tsize),
				userptr);
	if (rc)
		goto free_userptr;

	FUNC8(&userptr->job_node, parser->job_userptr_list);

	rc = hdev->asic_funcs->asic_dma_map_sg(hdev, userptr->sgt->sgl,
					userptr->sgt->nents, dir);
	if (rc) {
		FUNC0(hdev->dev, "failed to map sgt with DMA region\n");
		goto unpin_memory;
	}

	userptr->dma_mapped = true;
	userptr->dir = dir;

already_pinned:
	parser->patched_cb_size +=
			FUNC1(hdev, userptr->sgt);

	return 0;

unpin_memory:
	FUNC3(hdev, userptr);
free_userptr:
	FUNC5(userptr);
	return rc;
}