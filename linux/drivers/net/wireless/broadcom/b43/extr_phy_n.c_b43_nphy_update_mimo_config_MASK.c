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
typedef  int /*<<< orphan*/  u16 ;
struct b43_wldev {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  B43_NPHY_MIMOCFG ; 
 int /*<<< orphan*/  B43_NPHY_MIMOCFG_AUTO ; 
 int /*<<< orphan*/  B43_NPHY_MIMOCFG_GFMIX ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev, s32 preamble)
{
	u16 mimocfg = FUNC0(dev, B43_NPHY_MIMOCFG);

	mimocfg |= B43_NPHY_MIMOCFG_AUTO;
	if (preamble == 1)
		mimocfg |= B43_NPHY_MIMOCFG_GFMIX;
	else
		mimocfg &= ~B43_NPHY_MIMOCFG_GFMIX;

	FUNC1(dev, B43_NPHY_MIMOCFG, mimocfg);
}