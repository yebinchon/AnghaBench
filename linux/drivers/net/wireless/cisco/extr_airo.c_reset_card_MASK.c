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
struct net_device {struct airo_info* ml_priv; } ;
struct airo_info {int /*<<< orphan*/  sem; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SOFTRESET ; 
 int /*<<< orphan*/  COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*) ; 

__attribute__((used)) static int FUNC5( struct net_device *dev , int lock) {
	struct airo_info *ai = dev->ml_priv;

	if (lock && FUNC1(&ai->sem))
		return -1;
	FUNC4 (ai);
	FUNC0(ai,COMMAND,CMD_SOFTRESET);
	FUNC2(200);
	FUNC4 (ai);
	FUNC2(200);
	if (lock)
		FUNC3(&ai->sem);
	return 0;
}