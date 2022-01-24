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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct mwifiex_txinfo {int ack_frame_id; int /*<<< orphan*/  cookie; int /*<<< orphan*/  flags; } ;
struct mwifiex_private {int /*<<< orphan*/  ack_status_lock; int /*<<< orphan*/  ack_status_frames; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  MWIFIEX_BUF_FLAG_ACTION_TX_STATUS ; 
 struct mwifiex_txinfo* FUNC0 (struct sk_buff*) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 struct sk_buff* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

struct sk_buff *
FUNC7(struct mwifiex_private *priv,
				struct sk_buff *skb, u8 flag, u64 *cookie)
{
	struct sk_buff *orig_skb = skb;
	struct mwifiex_txinfo *tx_info, *orig_tx_info;

	skb = FUNC3(skb, GFP_ATOMIC);
	if (skb) {
		int id;

		FUNC5(&priv->ack_status_lock);
		id = FUNC1(&priv->ack_status_frames, orig_skb,
			       1, 0x10, GFP_ATOMIC);
		FUNC6(&priv->ack_status_lock);

		if (id >= 0) {
			tx_info = FUNC0(skb);
			tx_info->ack_frame_id = id;
			tx_info->flags |= flag;
			orig_tx_info = FUNC0(orig_skb);
			orig_tx_info->ack_frame_id = id;
			orig_tx_info->flags |= flag;

			if (flag == MWIFIEX_BUF_FLAG_ACTION_TX_STATUS && cookie)
				orig_tx_info->cookie = *cookie;

		} else if (FUNC4(skb)) {
			FUNC2(orig_skb);
		} else {
			FUNC2(skb);
			skb = orig_skb;
		}
	} else {
		/* couldn't clone -- lose tx status ... */
		skb = orig_skb;
	}

	return skb;
}