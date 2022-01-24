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
struct iwl_priv {int /*<<< orphan*/  sta_lock; } ;
struct iwl_add_sta_resp {int status; } ;

/* Variables and functions */
#define  ADD_STA_MODIFY_NON_EXIST_STA 131 
#define  ADD_STA_NO_BLOCK_ACK_RESOURCE 130 
#define  ADD_STA_NO_ROOM_IN_TABLE 129 
#define  ADD_STA_SUCCESS_MSK 128 
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct iwl_priv *priv,
				     struct iwl_rx_packet *pkt)
{
	struct iwl_add_sta_resp *add_sta_resp = (void *)pkt->data;

	FUNC1(priv, "Processing response for adding station\n");

	FUNC3(&priv->sta_lock);

	switch (add_sta_resp->status) {
	case ADD_STA_SUCCESS_MSK:
		FUNC1(priv, "REPLY_ADD_STA PASSED\n");
		break;
	case ADD_STA_NO_ROOM_IN_TABLE:
		FUNC2(priv, "Adding station failed, no room in table.\n");
		break;
	case ADD_STA_NO_BLOCK_ACK_RESOURCE:
		FUNC2(priv,
			"Adding station failed, no block ack resource.\n");
		break;
	case ADD_STA_MODIFY_NON_EXIST_STA:
		FUNC2(priv, "Attempting to modify non-existing station\n");
		break;
	default:
		FUNC0(priv, "Received REPLY_ADD_STA:(0x%08X)\n",
				add_sta_resp->status);
		break;
	}

	FUNC4(&priv->sta_lock);
}