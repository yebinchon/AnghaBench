#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__* db; } ;
struct TYPE_7__ {int /*<<< orphan*/  page_shift; int /*<<< orphan*/  npages; } ;
struct mlx4_hwq_resources {TYPE_1__ db; TYPE_3__ buf; int /*<<< orphan*/  mtt; } ;
struct mlx4_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mlx4_dev*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx4_dev*,int,TYPE_3__*) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC3 (struct mlx4_dev*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx4_dev*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct mlx4_dev *dev, struct mlx4_hwq_resources *wqres,
		       int size)
{
	int err;

	err = FUNC3(dev, &wqres->db, 1);
	if (err)
		return err;

	*wqres->db.db = 0;

	err = FUNC0(dev, size, &wqres->buf);
	if (err)
		goto err_db;

	err = FUNC6(dev, wqres->buf.npages, wqres->buf.page_shift,
			    &wqres->mtt);
	if (err)
		goto err_buf;

	err = FUNC2(dev, &wqres->mtt, &wqres->buf);
	if (err)
		goto err_mtt;

	return 0;

err_mtt:
	FUNC5(dev, &wqres->mtt);
err_buf:
	FUNC1(dev, size, &wqres->buf);
err_db:
	FUNC4(dev, &wqres->db);

	return err;
}