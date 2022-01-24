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
 int FUNC0 (int const*) ; 
#define  R2059_C1 130 
#define  R2059_C2 129 
#define  R2059_C3 128 
 int const R2059_RFPLL_MASTER ; 
 int const R2059_RFPLL_MISC_CAL_RESETN ; 
 int const R2059_XTAL_CONFIG2 ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_wldev*,int const,int) ; 
 int /*<<< orphan*/  FUNC5 (struct b43_wldev*,int const,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct b43_wldev*) ; 

__attribute__((used)) static void FUNC8(struct b43_wldev *dev)
{
	static const u16 routing[] = { R2059_C1, R2059_C2, R2059_C3 };
	int i;

	/* Prepare (reset?) radio */
	FUNC2(dev);

	FUNC7(dev);

	for (i = 0; i < FUNC0(routing); i++)
		FUNC5(dev, routing[i] | 0x146, 0x3);

	/* Post init starts below */

	FUNC5(dev, R2059_RFPLL_MISC_CAL_RESETN, 0x0078);
	FUNC5(dev, R2059_XTAL_CONFIG2, 0x0080);
	FUNC6(2);
	FUNC4(dev, R2059_RFPLL_MISC_CAL_RESETN, ~0x0078);
	FUNC4(dev, R2059_XTAL_CONFIG2, ~0x0080);

	if (1) { /* FIXME */
		FUNC3(dev);
		FUNC1(dev);
	}

	FUNC4(dev, R2059_RFPLL_MASTER, ~0x0008);
}