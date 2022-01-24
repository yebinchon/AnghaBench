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
typedef  scalar_t__ u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_SHM_DATA ; 
 int /*<<< orphan*/  B43legacy_MMIO_SHM_DATA_UNALIGNED ; 
 scalar_t__ B43legacy_SHM_SHARED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC3(struct b43legacy_wldev *dev, u16 routing, u16 offset,
			   u16 value)
{
	if (routing == B43legacy_SHM_SHARED) {
		FUNC0((offset & 0x0001) != 0);
		if (offset & 0x0003) {
			/* Unaligned access */
			FUNC1(dev, routing, offset >> 2);
			FUNC2(dev,
					  B43legacy_MMIO_SHM_DATA_UNALIGNED,
					  value);
			return;
		}
		offset >>= 2;
	}
	FUNC1(dev, routing, offset);
	FUNC2(dev, B43legacy_MMIO_SHM_DATA, value);
}