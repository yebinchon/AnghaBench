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
typedef  int u16 ;
struct b43_wldev {int dummy; } ;
typedef  int /*<<< orphan*/  s16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev, u16 val)
{
	u16 i;
	s16 tmp;

	for (i = 0; i < 64; i++) {
		tmp = FUNC0(dev, i);
		tmp -= val;
		tmp = FUNC2(tmp, -32, 31);
		FUNC1(dev, i, tmp);
	}
}