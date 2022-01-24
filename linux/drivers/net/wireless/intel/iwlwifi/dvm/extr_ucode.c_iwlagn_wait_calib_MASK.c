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
struct TYPE_2__ {scalar_t__ cmd; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_1__ hdr; } ;
struct iwl_priv {int dummy; } ;
struct iwl_notif_wait_data {int dummy; } ;
struct iwl_calib_hdr {int /*<<< orphan*/  op_code; } ;

/* Variables and functions */
 scalar_t__ CALIBRATION_COMPLETE_NOTIFICATION ; 
 scalar_t__ CALIBRATION_RES_NOTIFICATION ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct iwl_priv*,struct iwl_calib_hdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_rx_packet*) ; 

__attribute__((used)) static bool FUNC4(struct iwl_notif_wait_data *notif_wait,
			      struct iwl_rx_packet *pkt, void *data)
{
	struct iwl_priv *priv = data;
	struct iwl_calib_hdr *hdr;

	if (pkt->hdr.cmd != CALIBRATION_RES_NOTIFICATION) {
		FUNC1(pkt->hdr.cmd != CALIBRATION_COMPLETE_NOTIFICATION);
		return true;
	}

	hdr = (struct iwl_calib_hdr *)pkt->data;

	if (FUNC2(priv, hdr, FUNC3(pkt)))
		FUNC0(priv, "Failed to record calibration data %d\n",
			hdr->op_code);

	return false;
}