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
struct iwl_rx_packet {scalar_t__ data; } ;
struct iwl_rx_cmd_buffer {int dummy; } ;
struct iwl_mvm {int dummy; } ;
struct ct_kill_notif {int /*<<< orphan*/  temperature; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_mvm*) ; 
 int FUNC4 (struct iwl_rx_packet*) ; 
 struct iwl_rx_packet* FUNC5 (struct iwl_rx_cmd_buffer*) ; 

void FUNC6(struct iwl_mvm *mvm, struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC5(rxb);
	struct ct_kill_notif *notif;
	int len = FUNC4(pkt);

	if (FUNC2(len != sizeof(*notif))) {
		FUNC1(mvm, "Invalid CT_KILL_NOTIFICATION\n");
		return;
	}

	notif = (struct ct_kill_notif *)pkt->data;
	FUNC0(mvm, "CT Kill notification temperature = %d\n",
		       notif->temperature);

	FUNC3(mvm);
}