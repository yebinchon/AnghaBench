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
struct nsim_dev {int /*<<< orphan*/  port_list_lock; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC2 (struct devlink*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct devlink*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct nsim_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct devlink*) ; 
 int /*<<< orphan*/  nsim_devlink_params ; 
 struct devlink* FUNC10 (struct nsim_dev*) ; 

__attribute__((used)) static void FUNC11(struct nsim_dev *nsim_dev)
{
	struct devlink *devlink = FUNC10(nsim_dev);

	FUNC6(nsim_dev);
	FUNC7(nsim_dev);
	FUNC9(devlink);
	FUNC8(nsim_dev);
	FUNC2(devlink, nsim_devlink_params,
				  FUNC0(nsim_devlink_params));
	FUNC4(devlink);
	FUNC3(devlink, NULL);
	FUNC5(&nsim_dev->port_list_lock);
	FUNC1(devlink);
}