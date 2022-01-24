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
struct mlx5_db_pgdir {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  db_page; int /*<<< orphan*/  db_dma; } ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_db_pgdir*) ; 
 struct mlx5_db_pgdir* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct mlx5_db_pgdir *FUNC7(struct mlx5_core_dev *dev,
						 int node)
{
	u32 db_per_page = PAGE_SIZE / FUNC3();
	struct mlx5_db_pgdir *pgdir;

	pgdir = FUNC5(sizeof(*pgdir), GFP_KERNEL);
	if (!pgdir)
		return NULL;

	pgdir->bitmap = FUNC2(db_per_page, GFP_KERNEL);
	if (!pgdir->bitmap) {
		FUNC4(pgdir);
		return NULL;
	}

	FUNC0(pgdir->bitmap, db_per_page);

	pgdir->db_page = FUNC6(dev, PAGE_SIZE,
						       &pgdir->db_dma, node);
	if (!pgdir->db_page) {
		FUNC1(pgdir->bitmap);
		FUNC4(pgdir);
		return NULL;
	}

	return pgdir;
}