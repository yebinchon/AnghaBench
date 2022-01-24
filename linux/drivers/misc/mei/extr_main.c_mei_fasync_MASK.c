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
struct mei_cl {int /*<<< orphan*/  ev_async; } ;
struct file {struct mei_cl* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int,struct file*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_cl*) ; 

__attribute__((used)) static int FUNC2(int fd, struct file *file, int band)
{

	struct mei_cl *cl = file->private_data;

	if (!FUNC1(cl))
		return -ENODEV;

	return FUNC0(fd, file, band, &cl->ev_async);
}