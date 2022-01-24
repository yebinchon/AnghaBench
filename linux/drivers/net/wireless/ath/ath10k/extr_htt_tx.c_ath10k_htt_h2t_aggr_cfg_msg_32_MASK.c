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
typedef  int u8 ;
struct sk_buff {scalar_t__ data; } ;
struct htt_aggr_conf {int max_num_ampdu_subframes; int max_num_amsdu_subframes; } ;
struct TYPE_2__ {int /*<<< orphan*/  msg_type; } ;
struct htt_cmd {struct htt_aggr_conf aggr_conf; TYPE_1__ hdr; } ;
struct ath10k_htt {int /*<<< orphan*/  eid; struct ath10k* ar; } ;
struct ath10k {int /*<<< orphan*/  htc; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATH10K_DBG_HTT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HTT_H2T_MSG_TYPE_AGGR_CFG ; 
 int /*<<< orphan*/  FUNC0 (struct ath10k*,int /*<<< orphan*/ ,char*,int,int) ; 
 struct sk_buff* FUNC1 (struct ath10k*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC5(struct ath10k_htt *htt,
					  u8 max_subfrms_ampdu,
					  u8 max_subfrms_amsdu)
{
	struct ath10k *ar = htt->ar;
	struct htt_aggr_conf *aggr_conf;
	struct sk_buff *skb;
	struct htt_cmd *cmd;
	int len;
	int ret;

	/* Firmware defaults are: amsdu = 3 and ampdu = 64 */

	if (max_subfrms_ampdu == 0 || max_subfrms_ampdu > 64)
		return -EINVAL;

	if (max_subfrms_amsdu == 0 || max_subfrms_amsdu > 31)
		return -EINVAL;

	len = sizeof(cmd->hdr);
	len += sizeof(cmd->aggr_conf);

	skb = FUNC1(ar, len);
	if (!skb)
		return -ENOMEM;

	FUNC4(skb, len);
	cmd = (struct htt_cmd *)skb->data;
	cmd->hdr.msg_type = HTT_H2T_MSG_TYPE_AGGR_CFG;

	aggr_conf = &cmd->aggr_conf;
	aggr_conf->max_num_ampdu_subframes = max_subfrms_ampdu;
	aggr_conf->max_num_amsdu_subframes = max_subfrms_amsdu;

	FUNC0(ar, ATH10K_DBG_HTT, "htt h2t aggr cfg msg amsdu %d ampdu %d",
		   aggr_conf->max_num_amsdu_subframes,
		   aggr_conf->max_num_ampdu_subframes);

	ret = FUNC2(&htt->ar->htc, htt->eid, skb);
	if (ret) {
		FUNC3(skb);
		return ret;
	}

	return 0;
}