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
typedef  int /*<<< orphan*/  u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct b43legacy_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static u16 FUNC6(struct b43legacy_wldev *dev)
{
	int i;
	u16 ret = 0;
	unsigned long flags;

	FUNC4(flags);
	for (i = 0; i < 10; i++) {
		FUNC1(dev, 0x0015, 0xAFA0);
		FUNC5(1);
		FUNC1(dev, 0x0015, 0xEFA0);
		FUNC5(10);
		FUNC1(dev, 0x0015, 0xFFA0);
		FUNC5(40);
		ret += FUNC0(dev, 0x002C);
	}
	FUNC3(flags);
	FUNC2();

	return ret;
}