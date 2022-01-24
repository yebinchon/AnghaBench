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
struct seq_file {struct cosm_device* private; } ;
struct cosm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cosm_device*,int) ; 

__attribute__((used)) static int FUNC1(struct seq_file *s, void *pos)
{
	struct cosm_device *cdev = s->private;

	FUNC0(cdev, true);
	return 0;
}