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
struct mib_phy {int /*<<< orphan*/  current_reg_domain; int /*<<< orphan*/  phy_type; int /*<<< orphan*/  current_cca_mode; int /*<<< orphan*/  channel_id; int /*<<< orphan*/ * operation_rate_set; int /*<<< orphan*/  cca_mode_supported; int /*<<< orphan*/  mpdu_max_length; int /*<<< orphan*/  plcp_header_length; int /*<<< orphan*/  preamble_length; int /*<<< orphan*/  sifs_time; int /*<<< orphan*/  slot_time; int /*<<< orphan*/  ed_threshold; } ;
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MIB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIB_PHY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mib_phy*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mib_phy*) ; 
 struct mib_phy* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct at76_priv *priv)
{
	int ret;
	struct mib_phy *m = FUNC3(sizeof(struct mib_phy), GFP_KERNEL);

	if (!m)
		return;

	ret = FUNC1(priv->udev, MIB_PHY, m, sizeof(struct mib_phy));
	if (ret < 0) {
		FUNC6(priv->hw->wiphy,
			  "at76_get_mib (PHY) failed: %d\n", ret);
		goto exit;
	}

	FUNC0(DBG_MIB, "%s: MIB PHY: ed_threshold %d slot_time %d "
		 "sifs_time %d preamble_length %d plcp_header_length %d "
		 "mpdu_max_length %d cca_mode_supported %d operation_rate_set "
		 "0x%x 0x%x 0x%x 0x%x channel_id %d current_cca_mode %d "
		 "phy_type %d current_reg_domain %d",
		 FUNC7(priv->hw->wiphy), FUNC5(m->ed_threshold),
		 FUNC4(m->slot_time), FUNC4(m->sifs_time),
		 FUNC4(m->preamble_length),
		 FUNC4(m->plcp_header_length),
		 FUNC4(m->mpdu_max_length),
		 FUNC4(m->cca_mode_supported), m->operation_rate_set[0],
		 m->operation_rate_set[1], m->operation_rate_set[2],
		 m->operation_rate_set[3], m->channel_id, m->current_cca_mode,
		 m->phy_type, m->current_reg_domain);
exit:
	FUNC2(m);
}