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
typedef  int u16 ;
struct brcms_phy_lcnphy {int lcnphy_tssi_tx_cnt; int lcnphy_tssi_npt; int /*<<< orphan*/  lcnphy_tssi_idx; } ;
struct TYPE_2__ {struct brcms_phy_lcnphy* pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct brcms_phy*) ; 
 int FUNC1 (struct brcms_phy*) ; 
 int FUNC2 (struct brcms_phy*) ; 

void FUNC3(struct brcms_phy *pi)
{
	u16 tx_cnt, tx_total, npt;
	struct brcms_phy_lcnphy *pi_lcn = pi->u.pi_lcnphy;

	tx_total = FUNC2(pi);
	tx_cnt = tx_total - pi_lcn->lcnphy_tssi_tx_cnt;
	npt = FUNC1(pi);

	if (tx_cnt > (1 << npt)) {

		pi_lcn->lcnphy_tssi_tx_cnt = tx_total;

		pi_lcn->lcnphy_tssi_idx = FUNC0(pi);
		pi_lcn->lcnphy_tssi_npt = npt;

	}
}