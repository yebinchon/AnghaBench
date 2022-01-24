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
struct enetc_hw {int dummy; } ;
struct enetc_si {int num_rx_rings; int num_tx_rings; int /*<<< orphan*/  num_rss; int /*<<< orphan*/  num_fs_entries; struct enetc_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENETC_MAX_RFS_SIZE ; 
 int /*<<< orphan*/  ENETC_SICAPR0 ; 
 int /*<<< orphan*/  ENETC_SIPCAPR0 ; 
 int ENETC_SIPCAPR0_RSS ; 
 int /*<<< orphan*/  ENETC_SIRFSCAPR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENETC_SIRSSCAPR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct enetc_hw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC4(struct enetc_si *si)
{
	struct enetc_hw *hw = &si->hw;
	u32 val;

	/* find out how many of various resources we have to work with */
	val = FUNC2(hw, ENETC_SICAPR0);
	si->num_rx_rings = (val >> 16) & 0xff;
	si->num_tx_rings = val & 0xff;

	val = FUNC2(hw, ENETC_SIRFSCAPR);
	si->num_fs_entries = FUNC0(val);
	si->num_fs_entries = FUNC3(si->num_fs_entries, ENETC_MAX_RFS_SIZE);

	si->num_rss = 0;
	val = FUNC2(hw, ENETC_SIPCAPR0);
	if (val & ENETC_SIPCAPR0_RSS) {
		val = FUNC2(hw, ENETC_SIRSSCAPR);
		si->num_rss = FUNC1(val);
	}
}