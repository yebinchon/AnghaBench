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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 scalar_t__ FUNC1 (struct b43_wldev*) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u16 FUNC3(struct b43_wldev *dev, u16 offset)
{
	if (!offset)
		offset = FUNC1(dev) ? 0x159 : 0x154;
	return FUNC2(dev, FUNC0(7, offset)) & 0x7;
}