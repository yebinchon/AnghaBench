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
struct saa7134_dev {int /*<<< orphan*/  lock; } ;
struct saa6588_command {int poll_mask; int /*<<< orphan*/ * event_list; struct file* instance; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  SAA6588_CMD_POLL ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  ioctl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct saa7134_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct saa6588_command*) ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ *) ; 
 struct saa7134_dev* FUNC4 (struct file*) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file, poll_table *wait)
{
	struct saa7134_dev *dev = FUNC4(file);
	struct saa6588_command cmd;
	__poll_t rc = FUNC3(file, wait);

	cmd.instance = file;
	cmd.event_list = wait;
	cmd.poll_mask = 0;
	FUNC0(&dev->lock);
	FUNC2(dev, core, ioctl, SAA6588_CMD_POLL, &cmd);
	FUNC1(&dev->lock);

	return rc | cmd.poll_mask;
}