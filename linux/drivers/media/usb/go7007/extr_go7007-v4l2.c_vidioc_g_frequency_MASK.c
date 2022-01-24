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
struct v4l2_frequency {scalar_t__ tuner; } ;
struct go7007 {int /*<<< orphan*/  v4l2_dev; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  g_frequency ; 
 int /*<<< orphan*/  tuner ; 
 struct go7007* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *f)
{
	struct go7007 *go = FUNC1(file);

	if (f->tuner)
		return -EINVAL;

	return FUNC0(&go->v4l2_dev, tuner, g_frequency, f);
}