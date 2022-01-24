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
typedef  int u32 ;
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_TABLE_ADDR ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_DATAHI ; 
 int /*<<< orphan*/  B43_NPHY_TABLE_DATALO ; 
#define  B43_NTAB_16BIT 130 
#define  B43_NTAB_32BIT 129 
#define  B43_NTAB_8BIT 128 
 int B43_NTAB_TYPEMASK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

u32 FUNC3(struct b43_wldev *dev, u32 offset)
{
	u32 type, value;

	type = offset & B43_NTAB_TYPEMASK;
	offset &= ~B43_NTAB_TYPEMASK;
	FUNC0(offset > 0xFFFF);

	switch (type) {
	case B43_NTAB_8BIT:
		FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);
		value = FUNC1(dev, B43_NPHY_TABLE_DATALO) & 0xFF;
		break;
	case B43_NTAB_16BIT:
		FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);
		value = FUNC1(dev, B43_NPHY_TABLE_DATALO);
		break;
	case B43_NTAB_32BIT:
		FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);
		value = FUNC1(dev, B43_NPHY_TABLE_DATALO);
		value |= FUNC1(dev, B43_NPHY_TABLE_DATAHI) << 16;
		break;
	default:
		FUNC0(1);
		value = 0;
	}

	return value;
}