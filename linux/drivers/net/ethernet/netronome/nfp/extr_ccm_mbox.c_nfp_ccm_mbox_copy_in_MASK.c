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
typedef  int u32 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct TYPE_3__ {int mbox_off; } ;
struct nfp_net {TYPE_2__ mbox_cmsg; TYPE_1__ tlv_caps; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int NFP_NET_CFG_MBOX_SIMPLE_VAL ; 
 int /*<<< orphan*/  NFP_NET_MBOX_TLV_TYPE_END ; 
 int /*<<< orphan*/  NFP_NET_MBOX_TLV_TYPE_MSG ; 
 int /*<<< orphan*/  NFP_NET_MBOX_TLV_TYPE_RESV ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct nfp_net*,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,int) ; 
 struct sk_buff* FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static void FUNC8(struct nfp_net *nn, struct sk_buff *last)
{
	struct sk_buff *skb;
	int reserve, i, cnt;
	__be32 *data;
	u32 off, len;

	off = nn->tlv_caps.mbox_off + NFP_NET_CFG_MBOX_SIMPLE_VAL;
	skb = FUNC0(&nn->mbox_cmsg.queue);
	while (true) {
		FUNC4(nn, off, NFP_NET_MBOX_TLV_TYPE_MSG,
				       skb->len);
		off += 4;

		/* Write data word by word, skb->data should be aligned */
		data = (__be32 *)skb->data;
		cnt = skb->len / 4;
		for (i = 0 ; i < cnt; i++) {
			FUNC5(nn, off, FUNC1(data[i]));
			off += 4;
		}
		if (skb->len & 3) {
			__be32 tmp = 0;

			FUNC2(&tmp, &data[i], skb->len & 3);
			FUNC5(nn, off, FUNC1(tmp));
			off += 4;
		}

		/* Reserve space if reply is bigger */
		len = FUNC6(skb->len, 4);
		reserve = FUNC3(skb) - len;
		if (reserve > 0) {
			FUNC4(nn, off,
					       NFP_NET_MBOX_TLV_TYPE_RESV,
					       reserve);
			off += 4 + reserve;
		}

		if (skb == last)
			break;
		skb = FUNC7(&nn->mbox_cmsg.queue, skb);
	}

	FUNC4(nn, off, NFP_NET_MBOX_TLV_TYPE_END, 0);
}