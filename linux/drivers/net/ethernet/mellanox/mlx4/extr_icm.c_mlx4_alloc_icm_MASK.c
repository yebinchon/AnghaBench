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
struct mlx4_icm_chunk {int coherent; size_t npages; scalar_t__ nsg; int /*<<< orphan*/ * sg; int /*<<< orphan*/ * buf; int /*<<< orphan*/  list; } ;
struct mlx4_icm {int /*<<< orphan*/  chunk_list; scalar_t__ refcount; } ;
struct mlx4_dev {TYPE_2__* persist; int /*<<< orphan*/  numa_node; } ;
typedef  int gfp_t ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MLX4_ICM_ALLOC_SIZE ; 
 size_t MLX4_ICM_CHUNK_LEN ; 
 int __GFP_DIRECT_RECLAIM ; 
 int __GFP_HIGHMEM ; 
 int __GFP_NOWARN ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 struct mlx4_icm* FUNC4 (int,int) ; 
 struct mlx4_icm* FUNC5 (int,int,int /*<<< orphan*/ ) ; 
 struct mlx4_icm_chunk* FUNC6 (int,int) ; 
 struct mlx4_icm_chunk* FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx4_dev*,struct mlx4_icm*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 

struct mlx4_icm *FUNC13(struct mlx4_dev *dev, int npages,
				gfp_t gfp_mask, int coherent)
{
	struct mlx4_icm *icm;
	struct mlx4_icm_chunk *chunk = NULL;
	int cur_order;
	gfp_t mask;
	int ret;

	/* We use sg_set_buf for coherent allocs, which assumes low memory */
	FUNC0(coherent && (gfp_mask & __GFP_HIGHMEM));

	icm = FUNC5(sizeof(*icm),
			   gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN),
			   dev->numa_node);
	if (!icm) {
		icm = FUNC4(sizeof(*icm),
			      gfp_mask & ~(__GFP_HIGHMEM | __GFP_NOWARN));
		if (!icm)
			return NULL;
	}

	icm->refcount = 0;
	FUNC1(&icm->chunk_list);

	cur_order = FUNC3(MLX4_ICM_ALLOC_SIZE);

	while (npages > 0) {
		if (!chunk) {
			chunk = FUNC7(sizeof(*chunk),
					     gfp_mask & ~(__GFP_HIGHMEM |
							  __GFP_NOWARN),
					     dev->numa_node);
			if (!chunk) {
				chunk = FUNC6(sizeof(*chunk),
						gfp_mask & ~(__GFP_HIGHMEM |
							     __GFP_NOWARN));
				if (!chunk)
					goto fail;
			}
			chunk->coherent = coherent;

			if (!coherent)
				FUNC12(chunk->sg, MLX4_ICM_CHUNK_LEN);
			FUNC8(&chunk->list, &icm->chunk_list);
		}

		while (1 << cur_order > npages)
			--cur_order;

		mask = gfp_mask;
		if (cur_order)
			mask &= ~__GFP_DIRECT_RECLAIM;

		if (coherent)
			ret = FUNC9(&dev->persist->pdev->dev,
						&chunk->buf[chunk->npages],
						cur_order, mask);
		else
			ret = FUNC10(&chunk->sg[chunk->npages],
						   cur_order, mask,
						   dev->numa_node);

		if (ret) {
			if (--cur_order < 0)
				goto fail;
			else
				continue;
		}

		++chunk->npages;

		if (coherent)
			++chunk->nsg;
		else if (chunk->npages == MLX4_ICM_CHUNK_LEN) {
			chunk->nsg = FUNC2(&dev->persist->pdev->dev,
						chunk->sg, chunk->npages,
						DMA_BIDIRECTIONAL);

			if (chunk->nsg <= 0)
				goto fail;
		}

		if (chunk->npages == MLX4_ICM_CHUNK_LEN)
			chunk = NULL;

		npages -= 1 << cur_order;
	}

	if (!coherent && chunk) {
		chunk->nsg = FUNC2(&dev->persist->pdev->dev, chunk->sg,
					chunk->npages, DMA_BIDIRECTIONAL);

		if (chunk->nsg <= 0)
			goto fail;
	}

	return icm;

fail:
	FUNC11(dev, icm, coherent);
	return NULL;
}