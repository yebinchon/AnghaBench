#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct airo_info {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_SOFTRESET ; 
 int /*<<< orphan*/  COMMAND ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*) ; 

__attribute__((used)) static int FUNC5(struct airo_info *ai) {
	FUNC2(ai, 1);

	if(!FUNC4 (ai)){
		FUNC1(ai->dev->name, "Waitbusy hang before RESET");
		return -EBUSY;
	}

	FUNC0(ai,COMMAND,CMD_SOFTRESET);

	FUNC3(1);			/* WAS 600 12/7/00 */

	if(!FUNC4 (ai)){
		FUNC1(ai->dev->name, "Waitbusy hang AFTER RESET");
		return -EBUSY;
	}
	return 0;
}