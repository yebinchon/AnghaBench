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
 int /*<<< orphan*/  B43_NPHY_BBCFG ; 
 int B43_NPHY_BBCFG_RSTCCA ; 
 int /*<<< orphan*/  B43_RFSEQ_RESET2RX ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int) ; 
 int FUNC2 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct b43_wldev *dev)
{
	u16 bbcfg;

	FUNC1(dev, 1);
	bbcfg = FUNC2(dev, B43_NPHY_BBCFG);
	FUNC3(dev, B43_NPHY_BBCFG, bbcfg | B43_NPHY_BBCFG_RSTCCA);
	FUNC4(1);
	FUNC3(dev, B43_NPHY_BBCFG, bbcfg & ~B43_NPHY_BBCFG_RSTCCA);
	FUNC1(dev, 0);
	FUNC0(dev, B43_RFSEQ_RESET2RX);
}