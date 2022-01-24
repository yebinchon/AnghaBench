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
typedef  int u16 ;
struct b43legacy_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_SHM_SHARED ; 
 int FUNC0 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(struct b43legacy_wldev *dev, u32 val)
{
	u16 tmp;

	val <<= 8;
	tmp = FUNC0(dev, B43legacy_SHM_SHARED, 0x0022) & 0xFCFF;
	FUNC1(dev, B43legacy_SHM_SHARED, 0x0022, tmp | val);
	tmp = FUNC0(dev, B43legacy_SHM_SHARED, 0x03A8) & 0xFCFF;
	FUNC1(dev, B43legacy_SHM_SHARED, 0x03A8, tmp | val);
	tmp = FUNC0(dev, B43legacy_SHM_SHARED, 0x0054) & 0xFCFF;
	FUNC1(dev, B43legacy_SHM_SHARED, 0x0054, tmp | val);
}