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
typedef  size_t u32 ;
struct TYPE_2__ {size_t saved_traces_index; int /*<<< orphan*/  lock; struct mlx5_fw_trace_data* straces; } ;
struct mlx5_fw_tracer {TYPE_1__ st_arr; } ;
struct mlx5_fw_trace_data {scalar_t__ timestamp; } ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int ENOMSG ; 
 int SAVED_TRACES_NUM ; 
 int FUNC0 (struct devlink_fmsg*) ; 
 int FUNC1 (struct devlink_fmsg*,char*) ; 
 int FUNC2 (struct devlink_fmsg*,struct mlx5_fw_trace_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct mlx5_fw_tracer *tracer,
					    struct devlink_fmsg *fmsg)
{
	struct mlx5_fw_trace_data *straces = tracer->st_arr.straces;
	u32 index, start_index, end_index;
	u32 saved_traces_index;
	int err;

	if (!straces[0].timestamp)
		return -ENOMSG;

	FUNC3(&tracer->st_arr.lock);
	saved_traces_index = tracer->st_arr.saved_traces_index;
	if (straces[saved_traces_index].timestamp)
		start_index = saved_traces_index;
	else
		start_index = 0;
	end_index = (saved_traces_index - 1) & (SAVED_TRACES_NUM - 1);

	err = FUNC1(fmsg, "dump fw traces");
	if (err)
		goto unlock;
	index = start_index;
	while (index != end_index) {
		err = FUNC2(fmsg, &straces[index]);
		if (err)
			goto unlock;

		index = (index + 1) & (SAVED_TRACES_NUM - 1);
	}

	err = FUNC0(fmsg);
unlock:
	FUNC4(&tracer->st_arr.lock);
	return err;
}