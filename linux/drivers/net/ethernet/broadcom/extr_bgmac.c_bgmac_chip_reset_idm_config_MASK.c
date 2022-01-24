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
struct bgmac {int feature_flags; int /*<<< orphan*/  has_robosw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int /*<<< orphan*/  BCMA_IOST ; 
 int BGMAC_BCMA_IOCTL_SW_CLKEN ; 
 int BGMAC_BCMA_IOCTL_SW_RESET ; 
 int BGMAC_BCMA_IOST_ATTACHED ; 
 int BGMAC_FEAT_IOST_ATTACHED ; 
 int BGMAC_FEAT_NO_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*,int) ; 
 int FUNC1 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct bgmac *bgmac)
{
	u32 iost;

	iost = FUNC1(bgmac, BCMA_IOST);
	if (bgmac->feature_flags & BGMAC_FEAT_IOST_ATTACHED)
		iost &= ~BGMAC_BCMA_IOST_ATTACHED;

	/* 3GMAC: for BCM4707 & BCM47094, only do core reset at bgmac_probe() */
	if (!(bgmac->feature_flags & BGMAC_FEAT_NO_RESET)) {
		u32 flags = 0;

		if (iost & BGMAC_BCMA_IOST_ATTACHED) {
			flags = BGMAC_BCMA_IOCTL_SW_CLKEN;
			if (!bgmac->has_robosw)
				flags |= BGMAC_BCMA_IOCTL_SW_RESET;
		}
		FUNC0(bgmac, flags);
	}

	if (iost & BGMAC_BCMA_IOST_ATTACHED && !bgmac->has_robosw)
		FUNC2(bgmac, BCMA_IOCTL,
				FUNC1(bgmac, BCMA_IOCTL) &
				~BGMAC_BCMA_IOCTL_SW_RESET);
}