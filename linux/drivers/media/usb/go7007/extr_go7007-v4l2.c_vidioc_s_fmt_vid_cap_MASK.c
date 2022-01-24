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
struct v4l2_format {int dummy; } ;
struct go7007 {int /*<<< orphan*/  vidq; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int FUNC0 (struct go7007*,struct v4l2_format*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 struct go7007* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
			struct v4l2_format *fmt)
{
	struct go7007 *go = FUNC2(file);

	if (FUNC1(&go->vidq))
		return -EBUSY;

	return FUNC0(go, fmt, 0);
}