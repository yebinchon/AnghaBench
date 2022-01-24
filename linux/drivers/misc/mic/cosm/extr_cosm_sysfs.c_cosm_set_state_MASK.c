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
typedef  size_t u8 ;
struct cosm_device {size_t state; int /*<<< orphan*/  state_sysfs; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/ * cosm_state_string ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct cosm_device *cdev, u8 state)
{
	FUNC0(&cdev->dev, "State %s -> %s\n",
		cosm_state_string[cdev->state],
		cosm_state_string[state]);
	cdev->state = state;
	FUNC1(cdev->state_sysfs);
}