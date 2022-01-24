#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* first_seq; } ;
struct TYPE_7__ {TYPE_2__ send; } ;
struct mlx5e_tls_metadata {TYPE_3__ content; } ;
typedef  struct mlx5e_tls_metadata u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  syndrome ;
struct tcphdr {int /*<<< orphan*/  seq; } ;
struct sk_buff {int len; int /*<<< orphan*/  queue_mapping; int /*<<< orphan*/  ip_summed; struct mlx5e_tls_metadata* data; TYPE_1__* dev; } ;
struct iphdr {void* tot_len; } ;
struct ethhdr {int dummy; } ;
typedef  int /*<<< orphan*/  rcd_sn ;
typedef  struct mlx5e_tls_metadata __be64 ;
struct TYPE_8__ {int gso_size; int /*<<< orphan*/  gso_type; int /*<<< orphan*/  gso_segs; } ;
struct TYPE_5__ {int mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct mlx5e_tls_metadata SYNDROME_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int) ; 
 struct iphdr* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5e_tls_metadata*,struct mlx5e_tls_metadata*,int) ; 
 int FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 struct tcphdr* FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC12(struct sk_buff *skb,
					struct sk_buff *nskb, u32 tcp_seq,
					int headln, __be64 rcd_sn)
{
	struct mlx5e_tls_metadata *pet;
	u8 syndrome = SYNDROME_SYNC;
	struct iphdr *iph;
	struct tcphdr *th;
	int data_len, mss;

	nskb->dev = skb->dev;
	FUNC6(nskb);
	FUNC7(nskb, FUNC5(skb));
	FUNC8(nskb, FUNC10(skb));
	FUNC4(nskb->data, skb->data, headln);
	FUNC4(nskb->data + headln, &rcd_sn, sizeof(rcd_sn));

	iph = FUNC3(nskb);
	iph->tot_len = FUNC2(nskb->len - FUNC5(nskb));
	th = FUNC11(nskb);
	data_len = nskb->len - headln;
	tcp_seq -= data_len;
	th->seq = FUNC1(tcp_seq);

	mss = nskb->dev->mtu - (headln - FUNC5(nskb));
	FUNC9(nskb)->gso_size = 0;
	if (data_len > mss) {
		FUNC9(nskb)->gso_size = mss;
		FUNC9(nskb)->gso_segs = FUNC0(data_len, mss);
	}
	FUNC9(nskb)->gso_type = FUNC9(skb)->gso_type;

	pet = (struct mlx5e_tls_metadata *)(nskb->data + sizeof(struct ethhdr));
	FUNC4(pet, &syndrome, sizeof(syndrome));
	pet->content.send.first_seq = FUNC2(tcp_seq);

	/* MLX5 devices don't care about the checksum partial start, offset
	 * and pseudo header
	 */
	nskb->ip_summed = CHECKSUM_PARTIAL;

	nskb->queue_mapping = skb->queue_mapping;
}