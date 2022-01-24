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
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_sta_node {scalar_t__ is_11n_enabled; } ;
struct TYPE_2__ {int /*<<< orphan*/  ra_list_spinlock; } ;
struct mwifiex_private {TYPE_1__ wmm; } ;
struct mwifiex_ds_tdls_oper {int /*<<< orphan*/  tdls_action; int /*<<< orphan*/  peer_mac; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_TDLS_OPER ; 
 int /*<<< orphan*/  MWIFIEX_TDLS_DISABLE_LINK ; 
 int /*<<< orphan*/  TDLS_LINK_TEARDOWN ; 
 int /*<<< orphan*/  TDLS_NOT_SETUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ds_tdls_oper*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC3 (struct mwifiex_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct mwifiex_private*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 struct mwifiex_sta_node* FUNC6 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (struct mwifiex_private*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_ds_tdls_oper*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(struct mwifiex_private *priv, const u8 *peer)
{
	struct mwifiex_sta_node *sta_ptr;
	struct mwifiex_ds_tdls_oper tdls_oper;

	FUNC1(&tdls_oper, 0, sizeof(struct mwifiex_ds_tdls_oper));
	sta_ptr = FUNC6(priv, peer);

	if (sta_ptr) {
		if (sta_ptr->is_11n_enabled) {
			FUNC2(priv);
			FUNC9(&priv->wmm.ra_list_spinlock);
			FUNC3(priv);
			FUNC10(&priv->wmm.ra_list_spinlock);
		}
		FUNC5(priv, peer);
	}

	FUNC7(priv, peer, TDLS_LINK_TEARDOWN);
	FUNC4(priv, peer, TDLS_NOT_SETUP);
	FUNC0(&tdls_oper.peer_mac, peer, ETH_ALEN);
	tdls_oper.tdls_action = MWIFIEX_TDLS_DISABLE_LINK;
	return FUNC8(priv, HostCmd_CMD_TDLS_OPER,
				HostCmd_ACT_GEN_SET, 0, &tdls_oper, true);
}