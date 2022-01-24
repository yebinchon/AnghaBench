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
struct iwl_mfuart_load_notif {int /*<<< orphan*/  image_size; int /*<<< orphan*/  duration; int /*<<< orphan*/  status; int /*<<< orphan*/  external_ver; int /*<<< orphan*/  installed_ver; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_mvm*,char*,int /*<<< orphan*/ ,...) ; 
 int FUNC1 (struct iwl_rx_packet*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC3 (struct iwl_rx_cmd_buffer*) ; 

void FUNC4(struct iwl_mvm *mvm,
			     struct iwl_rx_cmd_buffer *rxb)
{
	struct iwl_rx_packet *pkt = FUNC3(rxb);
	struct iwl_mfuart_load_notif *mfuart_notif = (void *)pkt->data;

	FUNC0(mvm,
		       "MFUART: installed ver: 0x%08x, external ver: 0x%08x, status: 0x%08x, duration: 0x%08x\n",
		       FUNC2(mfuart_notif->installed_ver),
		       FUNC2(mfuart_notif->external_ver),
		       FUNC2(mfuart_notif->status),
		       FUNC2(mfuart_notif->duration));

	if (FUNC1(pkt) == sizeof(*mfuart_notif))
		FUNC0(mvm,
			       "MFUART: image size: 0x%08x\n",
			       FUNC2(mfuart_notif->image_size));
}