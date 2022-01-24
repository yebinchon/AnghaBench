#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vxlanhdr {int vx_flags; int vx_vni; } ;
struct vxlan_sock {int flags; } ;
struct vxlan_metadata {int dummy; } ;
struct vxlan_dev {int /*<<< orphan*/  gro_cells; TYPE_3__* dev; int /*<<< orphan*/  net; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ len; int /*<<< orphan*/  pkt_type; TYPE_3__* dev; } ;
struct pcpu_sw_netstats {int /*<<< orphan*/  syncp; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_packets; } ;
struct TYPE_5__ {int /*<<< orphan*/  tun_info; } ;
struct metadata_dst {TYPE_1__ u; } ;
struct dst_entry {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_6__ {int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_frame_errors; } ;
struct TYPE_7__ {int flags; int /*<<< orphan*/  tstats; int /*<<< orphan*/  rx_dropped; TYPE_2__ stats; int /*<<< orphan*/  ifindex; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_TEB ; 
 int IFF_UP ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  TUNNEL_KEY ; 
 int VXLAN_F_GBP ; 
 int VXLAN_F_GPE ; 
 int VXLAN_F_REMCSUM_RX ; 
 int VXLAN_HF_VNI ; 
 int /*<<< orphan*/  VXLAN_HLEN ; 
 int VXLAN_VNI_MASK ; 
 scalar_t__ FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct vxlan_metadata* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct vxlan_metadata*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 struct vxlan_sock* FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,struct dst_entry*) ; 
 void* FUNC17 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 struct pcpu_sw_netstats* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 struct metadata_dst* FUNC23 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC24 (int) ; 
 scalar_t__ FUNC25 (struct vxlan_sock*) ; 
 int /*<<< orphan*/  FUNC26 (struct vxlan_sock*,void*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC27 (struct vxlan_sock*) ; 
 struct vxlanhdr* FUNC28 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC29 (struct vxlanhdr*,struct sk_buff*,int,struct vxlan_metadata*) ; 
 int /*<<< orphan*/  FUNC30 (struct vxlanhdr*,int /*<<< orphan*/ *,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC31 (struct vxlanhdr*,struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct vxlan_dev*,struct vxlan_sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int) ; 
 struct vxlan_dev* FUNC34 (struct vxlan_sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC35(struct sock *sk, struct sk_buff *skb)
{
	struct pcpu_sw_netstats *stats;
	struct vxlan_dev *vxlan;
	struct vxlan_sock *vs;
	struct vxlanhdr unparsed;
	struct vxlan_metadata _md;
	struct vxlan_metadata *md = &_md;
	__be16 protocol = FUNC4(ETH_P_TEB);
	bool raw_proto = false;
	void *oiph;
	__be32 vni = 0;

	/* Need UDP and VXLAN header to be present */
	if (!FUNC12(skb, VXLAN_HLEN))
		goto drop;

	unparsed = *FUNC28(skb);
	/* VNI flag always required to be set */
	if (!(unparsed.vx_flags & VXLAN_HF_VNI)) {
		FUNC10(skb->dev, "invalid vxlan flags=%#x vni=%#x\n",
			   FUNC11(FUNC28(skb)->vx_flags),
			   FUNC11(FUNC28(skb)->vx_vni));
		/* Return non vxlan pkt */
		goto drop;
	}
	unparsed.vx_flags &= ~VXLAN_HF_VNI;
	unparsed.vx_vni &= ~VXLAN_VNI_MASK;

	vs = FUNC13(sk);
	if (!vs)
		goto drop;

	vni = FUNC33(FUNC28(skb)->vx_vni);

	vxlan = FUNC34(vs, skb->dev->ifindex, vni);
	if (!vxlan)
		goto drop;

	/* For backwards compatibility, only allow reserved fields to be
	 * used by VXLAN extensions if explicitly requested.
	 */
	if (vs->flags & VXLAN_F_GPE) {
		if (!FUNC30(&unparsed, &protocol, skb, vs->flags))
			goto drop;
		raw_proto = true;
	}

	if (FUNC0(skb, VXLAN_HLEN, protocol, raw_proto,
				   !FUNC9(vxlan->net, FUNC2(vxlan->dev))))
			goto drop;

	if (FUNC25(vs)) {
		struct metadata_dst *tun_dst;

		tun_dst = FUNC23(skb, FUNC27(vs), TUNNEL_KEY,
					 FUNC6(vni), sizeof(*md));

		if (!tun_dst)
			goto drop;

		md = FUNC5(&tun_dst->u.tun_info);

		FUNC16(skb, (struct dst_entry *)tun_dst);
	} else {
		FUNC8(md, 0, sizeof(*md));
	}

	if (vs->flags & VXLAN_F_REMCSUM_RX)
		if (!FUNC31(&unparsed, skb, vs->flags))
			goto drop;
	if (vs->flags & VXLAN_F_GBP)
		FUNC29(&unparsed, skb, vs->flags, md);
	/* Note that GBP and GPE can never be active together. This is
	 * ensured in vxlan_dev_configure.
	 */

	if (unparsed.vx_flags || unparsed.vx_vni) {
		/* If there are any unprocessed flags remaining treat
		 * this as a malformed packet. This behavior diverges from
		 * VXLAN RFC (RFC7348) which stipulates that bits in reserved
		 * in reserved fields are to be ignored. The approach here
		 * maintains compatibility with previous stack code, and also
		 * is more robust and provides a little more security in
		 * adding extensions to VXLAN.
		 */
		goto drop;
	}

	if (!raw_proto) {
		if (!FUNC32(vxlan, vs, skb, vni))
			goto drop;
	} else {
		FUNC18(skb);
		skb->dev = vxlan->dev;
		skb->pkt_type = PACKET_HOST;
	}

	oiph = FUNC17(skb);
	FUNC19(skb);

	if (!FUNC26(vs, oiph, skb)) {
		++vxlan->dev->stats.rx_frame_errors;
		++vxlan->dev->stats.rx_errors;
		goto drop;
	}

	FUNC14();

	if (FUNC24(!(vxlan->dev->flags & IFF_UP))) {
		FUNC15();
		FUNC1(&vxlan->dev->rx_dropped);
		goto drop;
	}

	stats = FUNC20(vxlan->dev->tstats);
	FUNC21(&stats->syncp);
	stats->rx_packets++;
	stats->rx_bytes += skb->len;
	FUNC22(&stats->syncp);

	FUNC3(&vxlan->gro_cells, skb);

	FUNC15();

	return 0;

drop:
	/* Consume bad packet */
	FUNC7(skb);
	return 0;
}