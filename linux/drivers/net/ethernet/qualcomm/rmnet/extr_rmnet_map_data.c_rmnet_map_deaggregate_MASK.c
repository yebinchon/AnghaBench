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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct rmnet_port {int data_format; } ;
struct rmnet_map_header {int /*<<< orphan*/  pkt_len; } ;
struct rmnet_map_dl_csum_trailer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int RMNET_FLAGS_INGRESS_MAP_CKSUMV4 ; 
 int /*<<< orphan*/  RMNET_MAP_DEAGGR_HEADROOM ; 
 scalar_t__ RMNET_MAP_DEAGGR_SPACING ; 
 struct sk_buff* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC6(struct sk_buff *skb,
				      struct rmnet_port *port)
{
	struct rmnet_map_header *maph;
	struct sk_buff *skbn;
	u32 packet_len;

	if (skb->len == 0)
		return NULL;

	maph = (struct rmnet_map_header *)skb->data;
	packet_len = FUNC2(maph->pkt_len) + sizeof(struct rmnet_map_header);

	if (port->data_format & RMNET_FLAGS_INGRESS_MAP_CKSUMV4)
		packet_len += sizeof(struct rmnet_map_dl_csum_trailer);

	if (((int)skb->len - (int)packet_len) < 0)
		return NULL;

	/* Some hardware can send us empty frames. Catch them */
	if (FUNC2(maph->pkt_len) == 0)
		return NULL;

	skbn = FUNC0(packet_len + RMNET_MAP_DEAGGR_SPACING, GFP_ATOMIC);
	if (!skbn)
		return NULL;

	FUNC5(skbn, RMNET_MAP_DEAGGR_HEADROOM);
	FUNC4(skbn, packet_len);
	FUNC1(skbn->data, skb->data, packet_len);
	FUNC3(skb, packet_len);

	return skbn;
}