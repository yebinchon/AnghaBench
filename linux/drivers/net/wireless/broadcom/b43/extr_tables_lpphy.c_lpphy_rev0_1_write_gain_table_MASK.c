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
typedef  int u32 ;
struct lpphy_tx_gain_table_entry {int pad; int pga; int gm; int dac; int bb_mult; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct b43_wldev *dev, int offset,
				struct lpphy_tx_gain_table_entry data)
{
	u32 tmp;

	FUNC1(dev->phy.rev >= 2);

	tmp  = data.pad << 11;
	tmp |= data.pga << 7;
	tmp |= data.gm  << 4;
	tmp |= data.dac;
	FUNC2(dev, FUNC0(10, 0xC0 + offset), tmp);
	tmp  = data.bb_mult << 20;
	FUNC2(dev, FUNC0(10, 0x140 + offset), tmp);
}