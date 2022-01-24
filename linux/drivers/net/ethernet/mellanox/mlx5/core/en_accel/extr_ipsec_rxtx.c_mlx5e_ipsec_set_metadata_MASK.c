#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xfrm_offload {int /*<<< orphan*/  proto; } ;
struct tcphdr {int /*<<< orphan*/  seq; int /*<<< orphan*/  dest; int /*<<< orphan*/  source; } ;
struct sk_buff {int /*<<< orphan*/  dev; int /*<<< orphan*/  len; int /*<<< orphan*/  inner_transport_header; int /*<<< orphan*/  inner_network_header; int /*<<< orphan*/  transport_header; int /*<<< orphan*/  network_header; } ;
struct TYPE_4__ {int /*<<< orphan*/  seq; int /*<<< orphan*/  mss_inv; int /*<<< orphan*/  esp_next_proto; } ;
struct TYPE_5__ {TYPE_1__ tx; } ;
struct mlx5e_ipsec_metadata {TYPE_2__ content; int /*<<< orphan*/  syndrome; } ;
struct ip_esp_hdr {int /*<<< orphan*/  seq_no; } ;
struct TYPE_6__ {int /*<<< orphan*/  gso_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  MLX5E_IPSEC_TX_SYNDROME_OFFLOAD ; 
 int /*<<< orphan*/  MLX5E_IPSEC_TX_SYNDROME_OFFLOAD_WITH_LSO_TCP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct tcphdr* FUNC1 (struct sk_buff*) ; 
 struct ip_esp_hdr* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_3__* FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct sk_buff *skb,
				     struct mlx5e_ipsec_metadata *mdata,
				     struct xfrm_offload *xo)
{
	struct ip_esp_hdr *esph;
	struct tcphdr *tcph;

	if (FUNC7(skb)) {
		/* Add LSO metadata indication */
		esph = FUNC2(skb);
		tcph = FUNC1(skb);
		FUNC4(skb->dev, "   Offloading GSO packet outer L3 %u; L4 %u; Inner L3 %u; L4 %u\n",
			   skb->network_header,
			   skb->transport_header,
			   skb->inner_network_header,
			   skb->inner_transport_header);
		FUNC4(skb->dev, "   Offloading GSO packet of len %u; mss %u; TCP sp %u dp %u seq 0x%x ESP seq 0x%x\n",
			   skb->len, FUNC8(skb)->gso_size,
			   FUNC6(tcph->source), FUNC6(tcph->dest),
			   FUNC5(tcph->seq), FUNC5(esph->seq_no));
		mdata->syndrome = MLX5E_IPSEC_TX_SYNDROME_OFFLOAD_WITH_LSO_TCP;
		mdata->content.tx.mss_inv = FUNC3(skb);
		mdata->content.tx.seq = FUNC0(FUNC5(tcph->seq) & 0xFFFF);
	} else {
		mdata->syndrome = MLX5E_IPSEC_TX_SYNDROME_OFFLOAD;
	}
	mdata->content.tx.esp_next_proto = xo->proto;

	FUNC4(skb->dev, "   TX metadata syndrome %u proto %u mss_inv %04x seq %04x\n",
		   mdata->syndrome, mdata->content.tx.esp_next_proto,
		   FUNC6(mdata->content.tx.mss_inv),
		   FUNC6(mdata->content.tx.seq));
}