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
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;
struct camera_data {int /*<<< orphan*/  v4l2_lock; } ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct camera_data*,struct file*,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct camera_data* FUNC3 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *filp, struct poll_table_struct *wait)
{
	struct camera_data *cam = FUNC3(filp);
	__poll_t res;

	FUNC1(&cam->v4l2_lock);
	res = FUNC0(cam, filp, wait);
	FUNC2(&cam->v4l2_lock);
	return res;
}