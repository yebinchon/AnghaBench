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
struct mlx5_fw_trace_data {int /*<<< orphan*/  msg; int /*<<< orphan*/  event_id; int /*<<< orphan*/  lost; int /*<<< orphan*/  timestamp; } ;
struct devlink_fmsg {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct devlink_fmsg*) ; 
 int FUNC2 (struct devlink_fmsg*) ; 
 int FUNC3 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct devlink_fmsg*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct devlink_fmsg *fmsg,
			     struct mlx5_fw_trace_data *trace_data)
{
	int err;

	err = FUNC2(fmsg);
	if (err)
		return err;

	err = FUNC4(fmsg, "timestamp", trace_data->timestamp);
	if (err)
		return err;

	err = FUNC0(fmsg, "lost", trace_data->lost);
	if (err)
		return err;

	err = FUNC5(fmsg, "event_id", trace_data->event_id);
	if (err)
		return err;

	err = FUNC3(fmsg, "msg", trace_data->msg);
	if (err)
		return err;

	err = FUNC1(fmsg);
	if (err)
		return err;
	return 0;
}