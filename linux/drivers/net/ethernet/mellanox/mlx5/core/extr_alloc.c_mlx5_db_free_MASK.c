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
typedef  int u32 ;
struct TYPE_4__ {TYPE_3__* pgdir; } ;
struct mlx5_db {TYPE_1__ u; int /*<<< orphan*/  index; } ;
struct TYPE_5__ {int /*<<< orphan*/  pgdir_mutex; } ;
struct mlx5_core_dev {TYPE_2__ priv; int /*<<< orphan*/  device; } ;
struct TYPE_6__ {int /*<<< orphan*/  bitmap; int /*<<< orphan*/  list; int /*<<< orphan*/  db_dma; int /*<<< orphan*/  db_page; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct mlx5_core_dev *dev, struct mlx5_db *db)
{
	u32 db_per_page = PAGE_SIZE / FUNC3();

	FUNC7(&dev->priv.pgdir_mutex);

	FUNC0(db->index, db->u.pgdir->bitmap);

	if (FUNC2(db->u.pgdir->bitmap, db_per_page)) {
		FUNC4(dev->device, PAGE_SIZE,
				  db->u.pgdir->db_page, db->u.pgdir->db_dma);
		FUNC6(&db->u.pgdir->list);
		FUNC1(db->u.pgdir->bitmap);
		FUNC5(db->u.pgdir);
	}

	FUNC8(&dev->priv.pgdir_mutex);
}