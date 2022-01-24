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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  dev; } ;
struct rmnet_port {int data_format; } ;
struct rmnet_map_header {int dummy; } ;
struct rmnet_endpoint {int /*<<< orphan*/  egress_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int RMNET_FLAGS_INGRESS_MAP_CKSUMV4 ; 
 int RMNET_FLAGS_INGRESS_MAP_COMMANDS ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 scalar_t__ RMNET_MAX_LOGICAL_EP ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 struct rmnet_endpoint* FUNC6 (struct rmnet_port*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,scalar_t__) ; 
 void FUNC8 (struct sk_buff*,struct rmnet_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,scalar_t__) ; 

__attribute__((used)) static void
FUNC12(struct sk_buff *skb,
			    struct rmnet_port *port)
{
	struct rmnet_endpoint *ep;
	u16 len, pad;
	u8 mux_id;

	if (FUNC0(skb)) {
		if (port->data_format & RMNET_FLAGS_INGRESS_MAP_COMMANDS)
			return FUNC8(skb, port);

		goto free_skb;
	}

	mux_id = FUNC2(skb);
	pad = FUNC3(skb);
	len = FUNC1(skb) - pad;

	if (mux_id >= RMNET_MAX_LOGICAL_EP)
		goto free_skb;

	ep = FUNC6(port, mux_id);
	if (!ep)
		goto free_skb;

	skb->dev = ep->egress_dev;

	/* Subtract MAP header */
	FUNC10(skb, sizeof(struct rmnet_map_header));
	FUNC9(skb);

	if (port->data_format & RMNET_FLAGS_INGRESS_MAP_CKSUMV4) {
		if (!FUNC7(skb, len + pad))
			skb->ip_summed = CHECKSUM_UNNECESSARY;
	}

	FUNC11(skb, len);
	FUNC5(skb);
	return;

free_skb:
	FUNC4(skb);
}