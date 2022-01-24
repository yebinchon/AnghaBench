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
struct b43_wldev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_PHY_HT_AFE_C1 ; 
 int /*<<< orphan*/  B43_PHY_HT_AFE_C1_OVER ; 
 int /*<<< orphan*/  B43_PHY_HT_AFE_C2 ; 
 int /*<<< orphan*/  B43_PHY_HT_AFE_C2_OVER ; 
 int /*<<< orphan*/  B43_PHY_HT_AFE_C3 ; 
 int /*<<< orphan*/  B43_PHY_HT_AFE_C3_OVER ; 
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC1(struct b43_wldev *dev, bool on)
{
	if (on) {
		FUNC0(dev, B43_PHY_HT_AFE_C1, 0x00cd);
		FUNC0(dev, B43_PHY_HT_AFE_C1_OVER, 0x0000);
		FUNC0(dev, B43_PHY_HT_AFE_C2, 0x00cd);
		FUNC0(dev, B43_PHY_HT_AFE_C2_OVER, 0x0000);
		FUNC0(dev, B43_PHY_HT_AFE_C3, 0x00cd);
		FUNC0(dev, B43_PHY_HT_AFE_C3_OVER, 0x0000);
	} else {
		FUNC0(dev, B43_PHY_HT_AFE_C1_OVER, 0x07ff);
		FUNC0(dev, B43_PHY_HT_AFE_C1, 0x00fd);
		FUNC0(dev, B43_PHY_HT_AFE_C2_OVER, 0x07ff);
		FUNC0(dev, B43_PHY_HT_AFE_C2, 0x00fd);
		FUNC0(dev, B43_PHY_HT_AFE_C3_OVER, 0x07ff);
		FUNC0(dev, B43_PHY_HT_AFE_C3, 0x00fd);
	}
}