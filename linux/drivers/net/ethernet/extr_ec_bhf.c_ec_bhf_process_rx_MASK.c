#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct sk_buff {int /*<<< orphan*/  protocol; } ;
struct rx_header {int dummy; } ;
struct TYPE_2__ {scalar_t__ recv; int /*<<< orphan*/  len; } ;
struct rx_desc {TYPE_1__ header; int /*<<< orphan*/ * data; } ;
struct ec_bhf_priv {size_t rx_dnext; int stat_rx_bytes; int rx_dcount; struct rx_desc* rx_descs; int /*<<< orphan*/  net_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ec_bhf_priv*) ; 
 int RXHDR_LEN_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ec_bhf_priv*,struct rx_desc*) ; 
 scalar_t__ FUNC3 (struct rx_desc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(struct ec_bhf_priv *priv)
{
	struct rx_desc *desc = &priv->rx_descs[priv->rx_dnext];

	while (FUNC3(desc)) {
		int pkt_size = (FUNC5(desc->header.len) &
			       RXHDR_LEN_MASK) - sizeof(struct rx_header) - 4;
		u8 *data = desc->data;
		struct sk_buff *skb;

		skb = FUNC6(priv->net_dev, pkt_size);
		if (skb) {
			FUNC8(skb, data, pkt_size);
			skb->protocol = FUNC4(skb, priv->net_dev);
			priv->stat_rx_bytes += pkt_size;

			FUNC7(skb);
		} else {
			FUNC1(FUNC0(priv),
					    "Couldn't allocate a skb_buff for a packet of size %u\n",
					    pkt_size);
		}

		desc->header.recv = 0;

		FUNC2(priv, desc);

		priv->rx_dnext = (priv->rx_dnext + 1) % priv->rx_dcount;
		desc = &priv->rx_descs[priv->rx_dnext];
	}
}