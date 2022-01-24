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
struct v4l2_tuner {scalar_t__ index; } ;
struct ivtv_open_id {struct ivtv* itv; } ;
struct ivtv {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct ivtv_open_id* FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (struct ivtv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner const*) ; 
 int /*<<< orphan*/  s_tuner ; 
 int /*<<< orphan*/  tuner ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, const struct v4l2_tuner *vt)
{
	struct ivtv_open_id *id = FUNC0(fh);
	struct ivtv *itv = id->itv;

	if (vt->index != 0)
		return -EINVAL;

	FUNC1(itv, tuner, s_tuner, vt);

	return 0;
}