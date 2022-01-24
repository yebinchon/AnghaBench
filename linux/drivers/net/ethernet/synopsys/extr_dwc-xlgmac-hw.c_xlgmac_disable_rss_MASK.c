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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rss; } ;
struct xlgmac_pdata {scalar_t__ mac_regs; TYPE_1__ hw_feat; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 scalar_t__ MAC_RSSCR ; 
 int /*<<< orphan*/  MAC_RSSCR_RSSE_LEN ; 
 int /*<<< orphan*/  MAC_RSSCR_RSSE_POS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct xlgmac_pdata *pdata)
{
	u32 regval;

	if (!pdata->hw_feat.rss)
		return -EOPNOTSUPP;

	regval = FUNC1(pdata->mac_regs + MAC_RSSCR);
	regval = FUNC0(regval, MAC_RSSCR_RSSE_POS,
				     MAC_RSSCR_RSSE_LEN, 0);
	FUNC2(regval, pdata->mac_regs + MAC_RSSCR);

	return 0;
}