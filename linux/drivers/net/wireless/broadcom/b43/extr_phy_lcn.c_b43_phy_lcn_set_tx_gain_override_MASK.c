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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int,int) ; 

__attribute__((used)) static void FUNC1(struct b43_wldev *dev, bool enable)
{
	FUNC0(dev, 0x4b0, ~(0x1 << 7), enable << 7);
	FUNC0(dev, 0x4b0, ~(0x1 << 14), enable << 14);
	FUNC0(dev, 0x43b, ~(0x1 << 6), enable << 6);
}