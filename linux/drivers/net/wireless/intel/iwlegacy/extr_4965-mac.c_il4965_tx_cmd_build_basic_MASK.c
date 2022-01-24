#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {void* pm_frame_timeout; } ;
struct TYPE_3__ {int /*<<< orphan*/  life_time; } ;
struct il_tx_cmd {int tx_flags; int sta_id; int tid_tspec; scalar_t__ next_frame_len; scalar_t__ driver_txop; TYPE_2__ timeout; TYPE_1__ stop_time; } ;
struct il_priv {int dummy; } ;
struct ieee80211_tx_info {int flags; } ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; } ;
typedef  int __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int IEEE80211_TX_CTL_NO_ACK ; 
 int TX_CMD_FLG_ACK_MSK ; 
 int TX_CMD_FLG_ANT_SEL_MSK ; 
 int TX_CMD_FLG_IMM_BA_RSP_MASK ; 
 int TX_CMD_FLG_MORE_FRAG_MSK ; 
 int TX_CMD_FLG_SEQ_CTL_MSK ; 
 int TX_CMD_FLG_TSF_MSK ; 
 int /*<<< orphan*/  TX_CMD_LIFE_TIME_INFINITE ; 
 void* FUNC0 (int) ; 
 int* FUNC1 (struct ieee80211_hdr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct il_priv*,struct ieee80211_tx_info*,int /*<<< orphan*/ ,int*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11(struct il_priv *il, struct sk_buff *skb,
			  struct il_tx_cmd *tx_cmd,
			  struct ieee80211_tx_info *info,
			  struct ieee80211_hdr *hdr, u8 std_id)
{
	__le16 fc = hdr->frame_control;
	__le32 tx_flags = tx_cmd->tx_flags;

	tx_cmd->stop_time.life_time = TX_CMD_LIFE_TIME_INFINITE;
	if (!(info->flags & IEEE80211_TX_CTL_NO_ACK)) {
		tx_flags |= TX_CMD_FLG_ACK_MSK;
		if (FUNC6(fc))
			tx_flags |= TX_CMD_FLG_SEQ_CTL_MSK;
		if (FUNC7(fc) &&
		    !(FUNC10(hdr->seq_ctrl) & 0xf))
			tx_flags |= TX_CMD_FLG_TSF_MSK;
	} else {
		tx_flags &= (~TX_CMD_FLG_ACK_MSK);
		tx_flags |= TX_CMD_FLG_SEQ_CTL_MSK;
	}

	if (FUNC4(fc))
		tx_flags |= TX_CMD_FLG_ACK_MSK | TX_CMD_FLG_IMM_BA_RSP_MASK;

	tx_cmd->sta_id = std_id;
	if (FUNC2(fc))
		tx_flags |= TX_CMD_FLG_MORE_FRAG_MSK;

	if (FUNC5(fc)) {
		u8 *qc = FUNC1(hdr);
		tx_cmd->tid_tspec = qc[0] & 0xf;
		tx_flags &= ~TX_CMD_FLG_SEQ_CTL_MSK;
	} else {
		tx_flags |= TX_CMD_FLG_SEQ_CTL_MSK;
	}

	FUNC9(il, info, fc, &tx_flags);

	tx_flags &= ~(TX_CMD_FLG_ANT_SEL_MSK);
	if (FUNC6(fc)) {
		if (FUNC3(fc) || FUNC8(fc))
			tx_cmd->timeout.pm_frame_timeout = FUNC0(3);
		else
			tx_cmd->timeout.pm_frame_timeout = FUNC0(2);
	} else {
		tx_cmd->timeout.pm_frame_timeout = 0;
	}

	tx_cmd->driver_txop = 0;
	tx_cmd->tx_flags = tx_flags;
	tx_cmd->next_frame_len = 0;
}