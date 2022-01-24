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
struct file {struct channel_data* private_data; } ;
struct cosa_data {int dummy; } ;
struct channel_data {struct cosa_data* cosa; } ;

/* Variables and functions */
 int /*<<< orphan*/  cosa_chardev_mutex ; 
 long FUNC0 (struct cosa_data*,struct channel_data*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC3(struct file *file, unsigned int cmd,
							unsigned long arg)
{
	struct channel_data *channel = file->private_data;
	struct cosa_data *cosa;
	long ret;

	FUNC1(&cosa_chardev_mutex);
	cosa = channel->cosa;
	ret = FUNC0(cosa, channel, cmd, arg);
	FUNC2(&cosa_chardev_mutex);
	return ret;
}