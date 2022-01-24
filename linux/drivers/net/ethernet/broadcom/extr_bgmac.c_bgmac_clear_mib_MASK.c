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
struct bgmac {int feature_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BGMAC_DC_MROR ; 
 int /*<<< orphan*/  BGMAC_DEV_CTL ; 
 int BGMAC_FEAT_NO_CLR_MIB ; 
 int BGMAC_NUM_MIB_RX_REGS ; 
 int BGMAC_NUM_MIB_TX_REGS ; 
 scalar_t__ BGMAC_RX_GOOD_OCTETS ; 
 scalar_t__ BGMAC_TX_GOOD_OCTETS ; 
 int /*<<< orphan*/  FUNC0 (struct bgmac*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct bgmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bgmac *bgmac)
{
	int i;

	if (bgmac->feature_flags & BGMAC_FEAT_NO_CLR_MIB)
		return;

	FUNC1(bgmac, BGMAC_DEV_CTL, BGMAC_DC_MROR);
	for (i = 0; i < BGMAC_NUM_MIB_TX_REGS; i++)
		FUNC0(bgmac, BGMAC_TX_GOOD_OCTETS + (i * 4));
	for (i = 0; i < BGMAC_NUM_MIB_RX_REGS; i++)
		FUNC0(bgmac, BGMAC_RX_GOOD_OCTETS + (i * 4));
}