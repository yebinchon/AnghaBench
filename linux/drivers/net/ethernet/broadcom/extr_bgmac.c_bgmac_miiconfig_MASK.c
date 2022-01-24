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
typedef  int u8 ;
struct bgmac {int feature_flags; void* mac_duplex; int /*<<< orphan*/  mac_speed; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int BGMAC_BCMA_IOCTL_SW_CLKEN ; 
 int /*<<< orphan*/  BGMAC_DEV_STATUS ; 
 int BGMAC_DS_MM_MASK ; 
 int BGMAC_DS_MM_SHIFT ; 
 int BGMAC_FEAT_FORCE_SPEED_2500 ; 
 int BGMAC_FEAT_IDM_MASK ; 
 void* DUPLEX_FULL ; 
 int /*<<< orphan*/  SPEED_100 ; 
 int /*<<< orphan*/  SPEED_2500 ; 
 int FUNC0 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*) ; 
 int FUNC3 (struct bgmac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct bgmac *bgmac)
{
	if (bgmac->feature_flags & BGMAC_FEAT_FORCE_SPEED_2500) {
		if (!(bgmac->feature_flags & BGMAC_FEAT_IDM_MASK)) {
			FUNC1(bgmac, BCMA_IOCTL,
					FUNC0(bgmac, BCMA_IOCTL) |
					0x40 | BGMAC_BCMA_IOCTL_SW_CLKEN);
		}
		bgmac->mac_speed = SPEED_2500;
		bgmac->mac_duplex = DUPLEX_FULL;
		FUNC2(bgmac);
	} else {
		u8 imode;

		imode = (FUNC3(bgmac, BGMAC_DEV_STATUS) &
			BGMAC_DS_MM_MASK) >> BGMAC_DS_MM_SHIFT;
		if (imode == 0 || imode == 1) {
			bgmac->mac_speed = SPEED_100;
			bgmac->mac_duplex = DUPLEX_FULL;
			FUNC2(bgmac);
		}
	}
}