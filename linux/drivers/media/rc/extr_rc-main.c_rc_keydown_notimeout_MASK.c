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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rc_dev {int /*<<< orphan*/  keylock; } ;
typedef  enum rc_proto { ____Placeholder_rc_proto } rc_proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rc_dev*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rc_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct rc_dev *dev, enum rc_proto protocol,
			  u32 scancode, u8 toggle)
{
	unsigned long flags;
	u32 keycode = FUNC1(dev, scancode);

	FUNC2(&dev->keylock, flags);
	FUNC0(dev, protocol, scancode, keycode, toggle);
	FUNC3(&dev->keylock, flags);
}