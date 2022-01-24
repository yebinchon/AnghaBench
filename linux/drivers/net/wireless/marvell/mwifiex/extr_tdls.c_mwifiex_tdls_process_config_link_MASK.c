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
typedef  int /*<<< orphan*/  u8 ;
struct mwifiex_sta_node {scalar_t__ tdls_status; } ;
struct mwifiex_private {int /*<<< orphan*/  adapter; } ;
struct mwifiex_ds_tdls_oper {int /*<<< orphan*/  tdls_action; int /*<<< orphan*/  peer_mac; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_TDLS_OPER ; 
 int /*<<< orphan*/  MWIFIEX_TDLS_CONFIG_LINK ; 
 scalar_t__ TDLS_SETUP_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ds_tdls_oper*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 struct mwifiex_sta_node* FUNC3 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int FUNC4 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_ds_tdls_oper*,int) ; 

__attribute__((used)) static int
FUNC5(struct mwifiex_private *priv, const u8 *peer)
{
	struct mwifiex_sta_node *sta_ptr;
	struct mwifiex_ds_tdls_oper tdls_oper;

	FUNC1(&tdls_oper, 0, sizeof(struct mwifiex_ds_tdls_oper));
	sta_ptr = FUNC3(priv, peer);

	if (!sta_ptr || sta_ptr->tdls_status == TDLS_SETUP_FAILURE) {
		FUNC2(priv->adapter, ERROR,
			    "link absent for peer %pM; cannot config\n", peer);
		return -EINVAL;
	}

	FUNC0(&tdls_oper.peer_mac, peer, ETH_ALEN);
	tdls_oper.tdls_action = MWIFIEX_TDLS_CONFIG_LINK;
	return FUNC4(priv, HostCmd_CMD_TDLS_OPER,
				HostCmd_ACT_GEN_SET, 0, &tdls_oper, true);
}