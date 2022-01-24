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
typedef  int uint32_t ;
struct vl600_frame_hdr {void* pkt_cnt; void* serial; void* len; } ;
struct vl600_pkt_hdr {void* len; struct vl600_frame_hdr dummy; int /*<<< orphan*/  h_proto; } ;
struct usbnet {int dummy; } ;
struct sk_buff {int len; scalar_t__ data; scalar_t__ head; } ;
struct ethhdr {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IP ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (void**) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct vl600_frame_hdr*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 struct sk_buff* FUNC7 (struct sk_buff*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*) ; 
 struct vl600_frame_hdr* FUNC9 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int FUNC12 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC13(struct usbnet *dev,
		struct sk_buff *skb, gfp_t flags)
{
	struct sk_buff *ret;
	struct vl600_frame_hdr *frame;
	struct vl600_pkt_hdr *packet;
	static uint32_t serial = 1;
	int orig_len = skb->len - sizeof(struct ethhdr);
	int full_len = (skb->len + sizeof(struct vl600_frame_hdr) + 3) & ~3;

	frame = (struct vl600_frame_hdr *) skb->data;
	if (skb->len > sizeof(*frame) && skb->len == FUNC3(&frame->len))
		return skb; /* Already encapsulated? */

	if (skb->len < sizeof(struct ethhdr))
		/* Drop, device can only deal with ethernet packets */
		return NULL;

	if (!FUNC6(skb)) {
		int headroom = FUNC8(skb);
		int tailroom = FUNC12(skb);

		if (tailroom >= full_len - skb->len - sizeof(*frame) &&
				headroom >= sizeof(*frame))
			/* There's enough head and tail room */
			goto encapsulate;

		if (headroom + tailroom + skb->len >= full_len) {
			/* There's enough total room, just readjust */
			skb->data = FUNC4(skb->head + sizeof(*frame),
					skb->data, skb->len);
			FUNC11(skb, skb->len);
			goto encapsulate;
		}
	}

	/* Alloc a new skb with the required size */
	ret = FUNC7(skb, sizeof(struct vl600_frame_hdr), full_len -
			skb->len - sizeof(struct vl600_frame_hdr), flags);
	FUNC1(skb);
	if (!ret)
		return ret;
	skb = ret;

encapsulate:
	/* Packet header is same size as ethernet packet header
	 * (sizeof(*packet) == sizeof(struct ethhdr)), additionally the
	 * h_proto field is in the same place so we just leave it alone and
	 * overwrite the remaining fields.
	 */
	packet = (struct vl600_pkt_hdr *) skb->data;
	/* The VL600 wants IPv6 packets to have an IPv4 ethertype
	 * Since this modem only supports IPv4 and IPv6, just set all
	 * frames to 0x0800 (ETH_P_IP)
	 */
	packet->h_proto = FUNC2(ETH_P_IP);
	FUNC5(&packet->dummy, 0, sizeof(packet->dummy));
	packet->len = FUNC0(orig_len);

	frame = FUNC9(skb, sizeof(*frame));
	FUNC5(frame, 0, sizeof(*frame));
	frame->len = FUNC0(full_len);
	frame->serial = FUNC0(serial++);
	frame->pkt_cnt = FUNC0(1);

	if (skb->len < full_len) /* Pad */
		FUNC10(skb, full_len - skb->len);

	return skb;
}