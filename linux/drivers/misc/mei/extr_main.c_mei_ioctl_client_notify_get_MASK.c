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
typedef  int u32 ;
struct mei_cl {int dummy; } ;
struct file {int f_flags; struct mei_cl* private_data; } ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int FUNC0 (struct mei_cl*,int,int*) ; 

__attribute__((used)) static int FUNC1(const struct file *file, u32 *notify_get)
{
	struct mei_cl *cl = file->private_data;
	bool notify_ev;
	bool block = (file->f_flags & O_NONBLOCK) == 0;
	int rets;

	rets = FUNC0(cl, block, &notify_ev);
	if (rets)
		return rets;

	*notify_get = notify_ev ? 1 : 0;
	return 0;
}