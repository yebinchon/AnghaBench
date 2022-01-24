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
struct sk_buff {scalar_t__ data; } ;
struct iwl_txq {int /*<<< orphan*/  write_ptr; } ;
struct iwl_tx_cmd_gen3 {int dummy; } ;
struct iwl_tx_cmd_gen2 {int dummy; } ;
struct iwl_trans {TYPE_1__* trans_cfg; } ;
struct iwl_tfh_tfd {int dummy; } ;
struct iwl_device_cmd {int dummy; } ;
struct iwl_cmd_meta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
struct TYPE_4__ {scalar_t__ gso_size; } ;
struct TYPE_3__ {scalar_t__ device_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int IEEE80211_QOS_CTL_A_MSDU_PRESENT ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int IWL_FIRST_TB_SIZE ; 
 int* FUNC1 (struct ieee80211_hdr*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct iwl_tfh_tfd* FUNC4 (struct iwl_trans*,struct iwl_txq*,struct iwl_device_cmd*,struct sk_buff*,struct iwl_cmd_meta*,int,int,int) ; 
 struct iwl_tfh_tfd* FUNC5 (struct iwl_trans*,struct iwl_txq*,struct iwl_device_cmd*,struct sk_buff*,struct iwl_cmd_meta*,int,int) ; 
 int FUNC6 (struct iwl_txq*,int /*<<< orphan*/ ) ; 
 struct iwl_tfh_tfd* FUNC7 (struct iwl_trans*,struct iwl_txq*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct iwl_tfh_tfd*,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* FUNC9 (struct sk_buff*) ; 

__attribute__((used)) static
struct iwl_tfh_tfd *FUNC10(struct iwl_trans *trans,
					    struct iwl_txq *txq,
					    struct iwl_device_cmd *dev_cmd,
					    struct sk_buff *skb,
					    struct iwl_cmd_meta *out_meta)
{
	struct ieee80211_hdr *hdr = (struct ieee80211_hdr *)skb->data;
	int idx = FUNC6(txq, txq->write_ptr);
	struct iwl_tfh_tfd *tfd = FUNC7(trans, txq, idx);
	int len, hdr_len;
	bool amsdu;

	/* There must be data left over for TB1 or this code must be changed */
	FUNC0(sizeof(struct iwl_tx_cmd_gen2) < IWL_FIRST_TB_SIZE);

	FUNC8(tfd, 0, sizeof(*tfd));

	if (trans->trans_cfg->device_family < IWL_DEVICE_FAMILY_22560)
		len = sizeof(struct iwl_tx_cmd_gen2);
	else
		len = sizeof(struct iwl_tx_cmd_gen3);

	amsdu = FUNC3(hdr->frame_control) &&
			(*FUNC1(hdr) &
			 IEEE80211_QOS_CTL_A_MSDU_PRESENT);

	hdr_len = FUNC2(hdr->frame_control);

	/*
	 * Only build A-MSDUs here if doing so by GSO, otherwise it may be
	 * an A-MSDU for other reasons, e.g. NAN or an A-MSDU having been
	 * built in the higher layers already.
	 */
	if (amsdu && FUNC9(skb)->gso_size)
		return FUNC5(trans, txq, dev_cmd, skb,
						    out_meta, hdr_len, len);

	return FUNC4(trans, txq, dev_cmd, skb, out_meta,
				      hdr_len, len, !amsdu);
}