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
struct cosm_device {int /*<<< orphan*/  dbg_dir; int /*<<< orphan*/  index; } ;
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int /*<<< orphan*/  cosm_dbg ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,struct cosm_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  force_reset_fops ; 
 int /*<<< orphan*/  log_buf_fops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int /*<<< orphan*/ ) ; 

void FUNC3(struct cosm_device *cdev)
{
	char name[16];

	if (!cosm_dbg)
		return;

	FUNC2(name, sizeof(name), "mic%d", cdev->index);
	cdev->dbg_dir = FUNC0(name, cosm_dbg);

	FUNC1("log_buf", 0444, cdev->dbg_dir, cdev,
			    &log_buf_fops);
	FUNC1("force_reset", 0444, cdev->dbg_dir, cdev,
			    &force_reset_fops);
}