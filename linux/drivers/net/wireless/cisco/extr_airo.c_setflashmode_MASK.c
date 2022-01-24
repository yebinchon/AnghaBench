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
struct airo_info {TYPE_1__* dev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND ; 
 int EIO ; 
 int /*<<< orphan*/  FLAG_FLASHING ; 
 int FLASH_COMMAND ; 
 int /*<<< orphan*/  FUNC0 (struct airo_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SWS0 ; 
 int /*<<< orphan*/  SWS1 ; 
 int /*<<< orphan*/  SWS2 ; 
 int /*<<< orphan*/  SWS3 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ probe ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct airo_info*) ; 

__attribute__((used)) static int FUNC6 (struct airo_info *ai) {
	FUNC4 (FLAG_FLASHING, &ai->flags);

	FUNC0(ai, SWS0, FLASH_COMMAND);
	FUNC0(ai, SWS1, FLASH_COMMAND);
	if (probe) {
		FUNC0(ai, SWS0, FLASH_COMMAND);
		FUNC0(ai, COMMAND,0x10);
	} else {
		FUNC0(ai, SWS2, FLASH_COMMAND);
		FUNC0(ai, SWS3, FLASH_COMMAND);
		FUNC0(ai, COMMAND,0);
	}
	FUNC3(500);		/* 500ms delay */

	if(!FUNC5(ai)) {
		FUNC2 (FLAG_FLASHING, &ai->flags);
		FUNC1(ai->dev->name, "Waitbusy hang after setflash mode");
		return -EIO;
	}
	return 0;
}