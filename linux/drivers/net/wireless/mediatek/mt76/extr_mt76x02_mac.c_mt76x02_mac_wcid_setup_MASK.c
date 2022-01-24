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
typedef  int u32 ;
struct mt76x02_dev {int dummy; } ;
struct mt76_wcid_addr {int /*<<< orphan*/  macaddr; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MT_WCID_ATTR_BSS_IDX ; 
 int /*<<< orphan*/  MT_WCID_ATTR_BSS_IDX_EXT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mt76x02_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mt76x02_dev*,int /*<<< orphan*/ ,struct mt76_wcid_addr*,int) ; 

void FUNC6(struct mt76x02_dev *dev, u8 idx,
			    u8 vif_idx, u8 *mac)
{
	struct mt76_wcid_addr addr = {};
	u32 attr;

	attr = FUNC0(MT_WCID_ATTR_BSS_IDX, vif_idx & 7) |
	       FUNC0(MT_WCID_ATTR_BSS_IDX_EXT, !!(vif_idx & 8));

	FUNC4(dev, FUNC2(idx), attr);

	if (idx >= 128)
		return;

	if (mac)
		FUNC3(addr.macaddr, mac, ETH_ALEN);

	FUNC5(dev, FUNC1(idx), &addr, sizeof(addr));
}