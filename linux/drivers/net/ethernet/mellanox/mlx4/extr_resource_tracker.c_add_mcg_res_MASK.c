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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct res_qp {int /*<<< orphan*/  mcg_spl; int /*<<< orphan*/  mcg_list; } ;
struct res_gid {int prot; int steer; int /*<<< orphan*/  list; int /*<<< orphan*/  reg_id; int /*<<< orphan*/  gid; } ;
struct mlx4_dev {int dummy; } ;
typedef  enum mlx4_steer_type { ____Placeholder_mlx4_steer_type } mlx4_steer_type ;
typedef  enum mlx4_protocol { ____Placeholder_mlx4_protocol } mlx4_protocol ;

/* Variables and functions */
 int EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct mlx4_dev*,int,struct res_qp*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct res_gid*) ; 
 struct res_gid* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct mlx4_dev *dev, int slave, struct res_qp *rqp,
		       u8 *gid, enum mlx4_protocol prot,
		       enum mlx4_steer_type steer, u64 reg_id)
{
	struct res_gid *res;
	int err;

	res = FUNC2(sizeof(*res), GFP_KERNEL);
	if (!res)
		return -ENOMEM;

	FUNC5(&rqp->mcg_spl);
	if (FUNC0(dev, slave, rqp, gid)) {
		FUNC1(res);
		err = -EEXIST;
	} else {
		FUNC4(res->gid, gid, 16);
		res->prot = prot;
		res->steer = steer;
		res->reg_id = reg_id;
		FUNC3(&res->list, &rqp->mcg_list);
		err = 0;
	}
	FUNC6(&rqp->mcg_spl);

	return err;
}