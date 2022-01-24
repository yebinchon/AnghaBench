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
struct video_i2c_data {int /*<<< orphan*/  regmap; int /*<<< orphan*/ * kthread_vid_cap; } ;
struct vb2_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VB2_BUF_STATE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct video_i2c_data* FUNC4 (struct vb2_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct vb2_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct vb2_queue *vq)
{
	struct video_i2c_data *data = FUNC4(vq);

	if (data->kthread_vid_cap == NULL)
		return;

	FUNC0(data->kthread_vid_cap);
	data->kthread_vid_cap = NULL;
	FUNC1(FUNC3(data->regmap));
	FUNC2(FUNC3(data->regmap));

	FUNC5(vq, VB2_BUF_STATE_ERROR);
}