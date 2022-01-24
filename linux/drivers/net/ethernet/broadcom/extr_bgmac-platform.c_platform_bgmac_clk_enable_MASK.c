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
struct TYPE_2__ {int /*<<< orphan*/  idm_base; } ;
struct bgmac {TYPE_1__ plat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int /*<<< orphan*/  BCMA_RESET_CTL ; 
 int BGMAC_ARCACHE ; 
 int BGMAC_ARUSER ; 
 int BGMAC_AWCACHE ; 
 int BGMAC_AWUSER ; 
 int BGMAC_CLK_EN ; 
 int FUNC0 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct bgmac *bgmac, u32 flags)
{
	u32 val;

	if (!bgmac->plat.idm_base)
		return;

	/* The Reset Control register only contains a single bit to show if the
	 * controller is currently in reset.  Do a sanity check here, just in
	 * case the bootloader happened to leave the device in reset.
	 */
	val = FUNC0(bgmac, BCMA_RESET_CTL);
	if (val) {
		FUNC1(bgmac, BCMA_RESET_CTL, 0);
		FUNC0(bgmac, BCMA_RESET_CTL);
		FUNC2(1);
	}

	val = FUNC0(bgmac, BCMA_IOCTL);
	/* Some bits of BCMA_IOCTL set by HW/ATF and should not change */
	val |= flags & ~(BGMAC_AWCACHE | BGMAC_ARCACHE | BGMAC_AWUSER |
			 BGMAC_ARUSER);
	val |= BGMAC_CLK_EN;
	FUNC1(bgmac, BCMA_IOCTL, val);
	FUNC0(bgmac, BCMA_IOCTL);
	FUNC2(1);
}