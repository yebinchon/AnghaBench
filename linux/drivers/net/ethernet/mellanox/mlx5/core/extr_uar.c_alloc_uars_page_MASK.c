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
struct mlx5_uars_page {int bfregs; int fp_avail; int reg_avail; int index; void* reg_bitmap; void* fp_bitmap; int /*<<< orphan*/  ref_count; scalar_t__ map; struct mlx5_core_dev* mdev; } ;
struct mlx5_core_dev {int dummy; } ;
typedef  int phys_addr_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 struct mlx5_uars_page* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX5_BFREGS_PER_UAR ; 
 int MLX5_FP_BFREGS_PER_UAR ; 
 int MLX5_NON_FP_BFREGS_PER_UAR ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_uars_page*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct mlx5_uars_page* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mlx5_core_dev*,int*) ; 
 scalar_t__ FUNC9 (struct mlx5_core_dev*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,void*) ; 
 int FUNC13 (struct mlx5_core_dev*,int) ; 
 int FUNC14 (struct mlx5_core_dev*) ; 

__attribute__((used)) static struct mlx5_uars_page *FUNC15(struct mlx5_core_dev *mdev,
					      bool map_wc)
{
	struct mlx5_uars_page *up;
	int err = -ENOMEM;
	phys_addr_t pfn;
	int bfregs;
	int i;

	bfregs = FUNC14(mdev) * MLX5_BFREGS_PER_UAR;
	up = FUNC7(sizeof(*up), GFP_KERNEL);
	if (!up)
		return FUNC0(err);

	up->mdev = mdev;
	up->reg_bitmap = FUNC2(bfregs, GFP_KERNEL);
	if (!up->reg_bitmap)
		goto error1;

	up->fp_bitmap = FUNC2(bfregs, GFP_KERNEL);
	if (!up->fp_bitmap)
		goto error1;

	for (i = 0; i < bfregs; i++)
		if ((i % MLX5_BFREGS_PER_UAR) < MLX5_NON_FP_BFREGS_PER_UAR)
			FUNC12(i, up->reg_bitmap);
		else
			FUNC12(i, up->fp_bitmap);

	up->bfregs = bfregs;
	up->fp_avail = bfregs * MLX5_FP_BFREGS_PER_UAR / MLX5_BFREGS_PER_UAR;
	up->reg_avail = bfregs * MLX5_NON_FP_BFREGS_PER_UAR / MLX5_BFREGS_PER_UAR;

	err = FUNC8(mdev, &up->index);
	if (err) {
		FUNC11(mdev, "mlx5_cmd_alloc_uar() failed, %d\n", err);
		goto error1;
	}

	pfn = FUNC13(mdev, up->index);
	if (map_wc) {
		up->map = FUNC4(pfn << PAGE_SHIFT, PAGE_SIZE);
		if (!up->map) {
			err = -EAGAIN;
			goto error2;
		}
	} else {
		up->map = FUNC3(pfn << PAGE_SHIFT, PAGE_SIZE);
		if (!up->map) {
			err = -ENOMEM;
			goto error2;
		}
	}
	FUNC6(&up->ref_count);
	FUNC10(mdev, "allocated UAR page: index %d, total bfregs %d\n",
		      up->index, up->bfregs);
	return up;

error2:
	if (FUNC9(mdev, up->index))
		FUNC11(mdev, "failed to free uar index %d\n", up->index);
error1:
	FUNC1(up->fp_bitmap);
	FUNC1(up->reg_bitmap);
	FUNC5(up);
	return FUNC0(err);
}