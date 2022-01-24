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
typedef  int /*<<< orphan*/  u16 ;
struct ice_sq_cd {int dummy; } ;
struct ice_port_info {int /*<<< orphan*/  sched_lock; } ;
struct ice_aqc_port_ets_elem {int dummy; } ;
typedef  enum ice_status { ____Placeholder_ice_status } ice_status ;

/* Variables and functions */
 int FUNC0 (struct ice_port_info*,struct ice_aqc_port_ets_elem*,int /*<<< orphan*/ ,struct ice_sq_cd*) ; 
 int FUNC1 (struct ice_port_info*,struct ice_aqc_port_ets_elem*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

enum ice_status
FUNC4(struct ice_port_info *pi,
		   struct ice_aqc_port_ets_elem *buf, u16 buf_size,
		   struct ice_sq_cd *cd)
{
	enum ice_status status;

	FUNC2(&pi->sched_lock);
	status = FUNC0(pi, buf, buf_size, cd);
	if (!status)
		status = FUNC1(pi, buf);
	FUNC3(&pi->sched_lock);
	return status;
}