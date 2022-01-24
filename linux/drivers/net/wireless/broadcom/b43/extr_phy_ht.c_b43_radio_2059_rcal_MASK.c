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
struct b43_wldev {int /*<<< orphan*/  wl; } ;

/* Variables and functions */
 int R2059_C3 ; 
 int R2059_RCAL_CONFIG ; 
 int R2059_RCAL_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct b43_wldev *dev)
{
	/* Enable */
	FUNC2(dev, R2059_C3 | R2059_RCAL_CONFIG, 0x1);
	FUNC5(10, 20);

	FUNC2(dev, R2059_C3 | 0x0BF, 0x1);
	FUNC1(dev, R2059_C3 | 0x19B, 0x3, 0x2);

	/* Start */
	FUNC2(dev, R2059_C3 | R2059_RCAL_CONFIG, 0x2);
	FUNC5(100, 200);

	/* Stop */
	FUNC0(dev, R2059_C3 | R2059_RCAL_CONFIG, ~0x2);

	if (!FUNC3(dev, R2059_C3 | R2059_RCAL_STATUS, 1, 1, 100,
				  1000000))
		FUNC4(dev->wl, "Radio 0x2059 rcal timeout\n");

	/* Disable */
	FUNC0(dev, R2059_C3 | R2059_RCAL_CONFIG, ~0x1);

	FUNC2(dev, 0xa, 0x60);
}