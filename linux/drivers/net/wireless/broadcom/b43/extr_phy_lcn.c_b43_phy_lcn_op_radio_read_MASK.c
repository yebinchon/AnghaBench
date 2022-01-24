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
 int /*<<< orphan*/  B43_MMIO_RADIO24_CONTROL ; 
 int /*<<< orphan*/  B43_MMIO_RADIO24_DATA ; 
 int FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u16 FUNC2(struct b43_wldev *dev, u16 reg)
{
	/* LCN-PHY needs 0x200 for read access */
	reg |= 0x200;

	FUNC1(dev, B43_MMIO_RADIO24_CONTROL, reg);
	return FUNC0(dev, B43_MMIO_RADIO24_DATA);
}