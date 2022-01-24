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
typedef  int /*<<< orphan*/  u32 ;
struct mlx5e_cq {int /*<<< orphan*/  wq; } ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct devlink_fmsg*) ; 
 int FUNC6 (struct devlink_fmsg*,char*) ; 

int FUNC7(struct mlx5e_cq *cq, struct devlink_fmsg *fmsg)
{
	u8 cq_log_stride;
	u32 cq_sz;
	int err;

	cq_sz = FUNC4(&cq->wq);
	cq_log_stride = FUNC3(&cq->wq);

	err = FUNC6(fmsg, "CQ");
	if (err)
		return err;

	err = FUNC2(fmsg, "stride size", FUNC0(cq_log_stride));
	if (err)
		return err;

	err = FUNC1(fmsg, "size", cq_sz);
	if (err)
		return err;

	err = FUNC5(fmsg);
	if (err)
		return err;

	return 0;
}