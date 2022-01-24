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
typedef  int u32 ;
struct mlx5_db_pgdir {scalar_t__ db_dma; scalar_t__* db_page; int /*<<< orphan*/  bitmap; } ;
struct TYPE_2__ {struct mlx5_db_pgdir* pgdir; } ;
struct mlx5_db {int index; scalar_t__* db; scalar_t__ dma; TYPE_1__ u; } ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct mlx5_db_pgdir *pgdir,
				    struct mlx5_db *db)
{
	u32 db_per_page = PAGE_SIZE / FUNC1();
	int offset;
	int i;

	i = FUNC2(pgdir->bitmap, db_per_page);
	if (i >= db_per_page)
		return -ENOMEM;

	FUNC0(i, pgdir->bitmap);

	db->u.pgdir = pgdir;
	db->index   = i;
	offset = db->index * FUNC1();
	db->db      = pgdir->db_page + offset / sizeof(*pgdir->db_page);
	db->dma     = pgdir->db_dma  + offset;

	db->db[0] = 0;
	db->db[1] = 0;

	return 0;
}