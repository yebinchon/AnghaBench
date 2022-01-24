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
struct mib_mdomain {int /*<<< orphan*/  tx_powerlevel; int /*<<< orphan*/  channel_list; } ;
struct at76_priv {TYPE_1__* hw; int /*<<< orphan*/  udev; } ;
struct TYPE_2__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_MIB ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MIB_MDOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mib_mdomain*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mib_mdomain*) ; 
 struct mib_mdomain* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct at76_priv *priv)
{
	int ret;
	struct mib_mdomain *m = FUNC3(sizeof(struct mib_mdomain), GFP_KERNEL);

	if (!m)
		return;

	ret = FUNC1(priv->udev, MIB_MDOMAIN, m,
			   sizeof(struct mib_mdomain));
	if (ret < 0) {
		FUNC4(priv->hw->wiphy,
			  "at76_get_mib (MDOMAIN) failed: %d\n", ret);
		goto exit;
	}

	FUNC0(DBG_MIB, "%s: MIB MDOMAIN: channel_list %*phD",
		 FUNC5(priv->hw->wiphy),
		 (int)sizeof(m->channel_list), m->channel_list);

	FUNC0(DBG_MIB, "%s: MIB MDOMAIN: tx_powerlevel %*phD",
		 FUNC5(priv->hw->wiphy),
		 (int)sizeof(m->tx_powerlevel), m->tx_powerlevel);
exit:
	FUNC2(m);
}