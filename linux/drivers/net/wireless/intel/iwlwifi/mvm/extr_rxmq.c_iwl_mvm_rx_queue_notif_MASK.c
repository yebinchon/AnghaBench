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
struct napi_struct {int dummy; } ;
struct iwl_rxq_sync_notification {scalar_t__ payload; } ;
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm_internal_rxq_notif {scalar_t__ cookie; int type; scalar_t__ sync; scalar_t__ data; } ;
struct iwl_mvm {scalar_t__ queue_sync_cookie; int /*<<< orphan*/  rx_sync_waitq; int /*<<< orphan*/  queue_sync_counter; } ;

/* Variables and functions */
#define  IWL_MVM_RXQ_EMPTY 130 
#define  IWL_MVM_RXQ_NOTIF_DEL_BA 129 
#define  IWL_MVM_RXQ_NSSN_SYNC 128 
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,int,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*,struct napi_struct*,int,void*) ; 
 struct iwl_rx_packet* FUNC4 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct iwl_mvm *mvm, struct napi_struct *napi,
			    struct iwl_rx_cmd_buffer *rxb, int queue)
{
	struct iwl_rx_packet *pkt = FUNC4(rxb);
	struct iwl_rxq_sync_notification *notif;
	struct iwl_mvm_internal_rxq_notif *internal_notif;

	notif = (void *)pkt->data;
	internal_notif = (void *)notif->payload;

	if (internal_notif->sync &&
	    mvm->queue_sync_cookie != internal_notif->cookie) {
		FUNC0(1, "Received expired RX queue sync message\n");
		return;
	}

	switch (internal_notif->type) {
	case IWL_MVM_RXQ_EMPTY:
		break;
	case IWL_MVM_RXQ_NOTIF_DEL_BA:
		FUNC2(mvm, queue, (void *)internal_notif->data);
		break;
	case IWL_MVM_RXQ_NSSN_SYNC:
		FUNC3(mvm, napi, queue,
				  (void *)internal_notif->data);
		break;
	default:
		FUNC0(1, "Invalid identifier %d", internal_notif->type);
	}

	if (internal_notif->sync &&
	    !FUNC1(&mvm->queue_sync_counter))
		FUNC5(&mvm->rx_sync_waitq);
}