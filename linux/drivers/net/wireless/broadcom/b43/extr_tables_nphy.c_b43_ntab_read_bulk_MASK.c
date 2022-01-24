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
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int chip_id; int chip_rev; } ;

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

void FUNC3(struct b43_wldev *dev, u32 offset,
			 unsigned int nr_elements, void *_data)
{
	u32 type;
	u8 *data = _data;
	unsigned int i;

	type = offset & B43_NTAB_TYPEMASK;
	offset &= ~B43_NTAB_TYPEMASK;
	FUNC0(offset > 0xFFFF);

	FUNC2(dev, B43_NPHY_TABLE_ADDR, offset);

	for (i = 0; i < nr_elements; i++) {
		/* Auto increment broken + caching issue on BCM43224? */
		if (dev->dev->chip_id == 43224 && dev->dev->chip_rev == 1) {
			FUNC1(dev, B43_NPHY_TABLE_DATALO);
			FUNC2(dev, B43_NPHY_TABLE_ADDR, offset + i);
		}

		switch (type) {
		case B43_NTAB_8BIT:
			*data = FUNC1(dev, B43_NPHY_TABLE_DATALO) & 0xFF;
			data++;
			break;
		case B43_NTAB_16BIT:
			*((u16 *)data) = FUNC1(dev, B43_NPHY_TABLE_DATALO);
			data += 2;
			break;
		case B43_NTAB_32BIT:
			*((u32 *)data) =
				FUNC1(dev, B43_NPHY_TABLE_DATALO);
			*((u32 *)data) |=
				FUNC1(dev, B43_NPHY_TABLE_DATAHI) << 16;
			data += 4;
			break;
		default:
			FUNC0(1);
		}
	}
}