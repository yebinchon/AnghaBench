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
typedef  int u16 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct rxtid {int /*<<< orphan*/  q; } ;
struct ethhdr {int /*<<< orphan*/  h_proto; } ;
struct aggr_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int MAX_MSDU_SUBFRAME_PAYLOAD_LEN ; 
 int MIN_MSDU_SUBFRAME_PAYLOAD_LEN ; 
 struct sk_buff* FUNC1 (struct aggr_info*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct aggr_info *p_aggr,
			     struct rxtid *rxtid, struct sk_buff *skb)
{
	struct sk_buff *new_skb;
	struct ethhdr *hdr;
	u16 frame_8023_len, payload_8023_len, mac_hdr_len, amsdu_len;
	u8 *framep;

	mac_hdr_len = sizeof(struct ethhdr);
	framep = skb->data + mac_hdr_len;
	amsdu_len = skb->len - mac_hdr_len;

	while (amsdu_len > mac_hdr_len) {
		hdr = (struct ethhdr *) framep;
		payload_8023_len = FUNC4(hdr->h_proto);

		if (payload_8023_len < MIN_MSDU_SUBFRAME_PAYLOAD_LEN ||
		    payload_8023_len > MAX_MSDU_SUBFRAME_PAYLOAD_LEN) {
			FUNC2("802.3 AMSDU frame bound check failed. len %d\n",
				   payload_8023_len);
			break;
		}

		frame_8023_len = payload_8023_len + mac_hdr_len;
		new_skb = FUNC1(p_aggr);
		if (!new_skb) {
			FUNC2("no buffer available\n");
			break;
		}

		FUNC6(new_skb->data, framep, frame_8023_len);
		FUNC7(new_skb, frame_8023_len);
		if (FUNC3(new_skb)) {
			FUNC2("dot3_2_dix error\n");
			FUNC5(new_skb);
			break;
		}

		FUNC8(&rxtid->q, new_skb);

		/* Is this the last subframe within this aggregate ? */
		if ((amsdu_len - frame_8023_len) == 0)
			break;

		/* Add the length of A-MSDU subframe padding bytes -
		 * Round to nearest word.
		 */
		frame_8023_len = FUNC0(frame_8023_len, 4);

		framep += frame_8023_len;
		amsdu_len -= frame_8023_len;
	}

	FUNC5(skb);
}