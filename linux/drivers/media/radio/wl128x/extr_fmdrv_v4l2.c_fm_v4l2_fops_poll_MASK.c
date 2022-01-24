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
struct fmdev {int /*<<< orphan*/  mutex; } ;
struct file {int dummy; } ;
typedef  int __poll_t ;

/* Variables and functions */
 int EPOLLIN ; 
 int EPOLLRDNORM ; 
 int FUNC0 (struct fmdev*,struct file*,struct poll_table_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fmdev* FUNC3 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC4(struct file *file, struct poll_table_struct *pts)
{
	int ret;
	struct fmdev *fmdev;

	fmdev = FUNC3(file);
	FUNC1(&fmdev->mutex);
	ret = FUNC0(fmdev, file, pts);
	FUNC2(&fmdev->mutex);
	if (ret < 0)
		return EPOLLIN | EPOLLRDNORM;

	return 0;
}