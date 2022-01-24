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
struct v4l2_fh {int dummy; } ;
struct file {struct v4l2_fh* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_fh*) ; 
 int /*<<< orphan*/  FUNC2 (struct v4l2_fh*) ; 

int FUNC3(struct file *filp)
{
	struct v4l2_fh *fh = filp->private_data;

	if (fh) {
		FUNC1(fh);
		FUNC2(fh);
		FUNC0(fh);
	}
	return 0;
}