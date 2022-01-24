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
struct TYPE_2__ {int /*<<< orphan*/  idm_base; } ;
struct bgmac {TYPE_1__ plat; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCMA_IOCTL ; 
 int /*<<< orphan*/  BCMA_RESET_CTL ; 
 int BCMA_RESET_CTL_RESET ; 
 int BGMAC_CLK_EN ; 
 int FUNC0 (struct bgmac*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC1(struct bgmac *bgmac)
{
	if (!bgmac->plat.idm_base)
		return true;

	if ((FUNC0(bgmac, BCMA_IOCTL) & BGMAC_CLK_EN) != BGMAC_CLK_EN)
		return false;
	if (FUNC0(bgmac, BCMA_RESET_CTL) & BCMA_RESET_CTL_RESET)
		return false;
	return true;
}