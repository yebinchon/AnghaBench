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
 int ENOMEM ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  HostCmd_ACT_GEN_SET ; 
 int /*<<< orphan*/  HostCmd_CMD_TDLS_OPER ; 
 int /*<<< orphan*/  MWIFIEX_TDLS_CREATE_LINK ; 
 scalar_t__ TDLS_SETUP_INPROGRESS ; 
 int /*<<< orphan*/  WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mwifiex_ds_tdls_oper*,int /*<<< orphan*/ ,int) ; 
 struct mwifiex_sta_node* FUNC2 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 struct mwifiex_sta_node* FUNC4 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct mwifiex_private*,int /*<<< orphan*/  const*) ; 
 int FUNC6 (struct mwifiex_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mwifiex_ds_tdls_oper*,int) ; 

__attribute__((used)) static int
FUNC7(struct mwifiex_private *priv, const u8 *peer)
{
	struct mwifiex_sta_node *sta_ptr;
	struct mwifiex_ds_tdls_oper tdls_oper;

	FUNC1(&tdls_oper, 0, sizeof(struct mwifiex_ds_tdls_oper));
	sta_ptr = FUNC4(priv, peer);

	if (sta_ptr && sta_ptr->tdls_status == TDLS_SETUP_INPROGRESS) {
		FUNC3(priv->adapter, WARN,
			    "Setup already in progress for peer %pM\n", peer);
		return 0;
	}

	sta_ptr = FUNC2(priv, peer);
	if (!sta_ptr)
		return -ENOMEM;

	sta_ptr->tdls_status = TDLS_SETUP_INPROGRESS;
	FUNC5(priv, peer);
	FUNC0(&tdls_oper.peer_mac, peer, ETH_ALEN);
	tdls_oper.tdls_action = MWIFIEX_TDLS_CREATE_LINK;
	return FUNC6(priv, HostCmd_CMD_TDLS_OPER,
				HostCmd_ACT_GEN_SET, 0, &tdls_oper, true);
}