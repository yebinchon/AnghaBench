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
typedef  int u64 ;
typedef  scalar_t__ u32 ;
struct xfrm_state {struct xfrm_replay_state_esn* replay_esn; } ;
struct xfrm_replay_state_esn {scalar_t__ oseq; } ;
struct TYPE_3__ {scalar_t__ low; scalar_t__ hi; } ;
struct xfrm_offload {TYPE_1__ seq; } ;
struct sk_buff {int dummy; } ;
struct ip_esp_hdr {int dummy; } ;
typedef  scalar_t__ __u32 ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_4__ {scalar_t__ gso_segs; } ;

/* Variables and functions */
 scalar_t__ MLX5E_IPSEC_ESN_SCOPE_MID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 TYPE_2__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct sk_buff*) ; 
 scalar_t__ FUNC5 (int) ; 

void FUNC6(struct sk_buff *skb, struct xfrm_state *x,
			    struct xfrm_offload *xo)
{
	struct xfrm_replay_state_esn *replay_esn = x->replay_esn;
	__u32 oseq = replay_esn->oseq;
	int iv_offset;
	__be64 seqno;
	u32 seq_hi;

	if (FUNC5(FUNC1(skb) && oseq < MLX5E_IPSEC_ESN_SCOPE_MID &&
		     MLX5E_IPSEC_ESN_SCOPE_MID < (oseq - FUNC2(skb)->gso_segs))) {
		seq_hi = xo->seq.hi - 1;
	} else {
		seq_hi = xo->seq.hi;
	}

	/* Place the SN in the IV field */
	seqno = FUNC0(xo->seq.low + ((u64)seq_hi << 32));
	iv_offset = FUNC4(skb) + sizeof(struct ip_esp_hdr);
	FUNC3(skb, iv_offset, &seqno, 8);
}