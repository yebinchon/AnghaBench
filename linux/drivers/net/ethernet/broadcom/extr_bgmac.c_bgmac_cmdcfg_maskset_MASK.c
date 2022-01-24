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
struct bgmac {int feature_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_CMDCFG ; 
 int BGMAC_CMDCFG_SR_REV0 ; 
 int BGMAC_CMDCFG_SR_REV4 ; 
 int BGMAC_FEAT_CMDCFG_SR_REV4 ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct bgmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bgmac*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct bgmac *bgmac, u32 mask, u32 set,
				 bool force)
{
	u32 cmdcfg = FUNC1(bgmac, BGMAC_CMDCFG);
	u32 new_val = (cmdcfg & mask) | set;
	u32 cmdcfg_sr;

	if (bgmac->feature_flags & BGMAC_FEAT_CMDCFG_SR_REV4)
		cmdcfg_sr = BGMAC_CMDCFG_SR_REV4;
	else
		cmdcfg_sr = BGMAC_CMDCFG_SR_REV0;

	FUNC2(bgmac, BGMAC_CMDCFG, cmdcfg_sr);
	FUNC4(2);

	if (new_val != cmdcfg || force)
		FUNC3(bgmac, BGMAC_CMDCFG, new_val);

	FUNC0(bgmac, BGMAC_CMDCFG, ~cmdcfg_sr);
	FUNC4(2);
}