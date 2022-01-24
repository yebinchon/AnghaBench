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
struct TYPE_2__ {scalar_t__ channel; } ;
struct iwl_rxon_context {TYPE_1__ staging; int /*<<< orphan*/  active; } ;
struct iwl_rxon_cmd {scalar_t__ channel; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_priv {scalar_t__ switch_channel; int /*<<< orphan*/  status; struct iwl_rxon_context* contexts; } ;
struct iwl_csa_notification {scalar_t__ channel; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 size_t IWL_RXON_CTX_BSS ; 
 int /*<<< orphan*/  STATUS_CHANNEL_SWITCH_PENDING ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC5 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct iwl_priv *priv, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC5(rxb);
	struct iwl_csa_notification *csa = (void *)pkt->data;
	/*
	 * MULTI-FIXME
	 * See iwlagn_mac_channel_switch.
	 */
	struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];
	struct iwl_rxon_cmd *rxon = (void *)&ctx->active;

	if (!FUNC6(STATUS_CHANNEL_SWITCH_PENDING, &priv->status))
		return;

	if (!FUNC4(csa->status) && csa->channel == priv->switch_channel) {
		rxon->channel = csa->channel;
		ctx->staging.channel = csa->channel;
		FUNC0(priv, "CSA notif: channel %d\n",
			      FUNC3(csa->channel));
		FUNC2(priv, true);
	} else {
		FUNC1(priv, "CSA notif (fail) : channel %d\n",
			FUNC3(csa->channel));
		FUNC2(priv, false);
	}
}