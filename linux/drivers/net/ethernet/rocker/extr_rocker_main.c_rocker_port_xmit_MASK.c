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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct rocker_tlv {int dummy; } ;
struct rocker_port {int /*<<< orphan*/  tx_ring; struct rocker* rocker; } ;
struct rocker_desc_info {int dummy; } ;
struct rocker {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  ROCKER_TLV_TX_FRAGS ; 
 int ROCKER_TX_FRAGS_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct rocker_port* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct rocker_desc_info*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct rocker_desc_info*) ; 
 struct rocker_desc_info* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct rocker*,int /*<<< orphan*/ *,struct rocker_desc_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct rocker_desc_info*,struct rocker_tlv*) ; 
 int /*<<< orphan*/  FUNC10 (struct rocker_desc_info*,struct rocker_tlv*) ; 
 struct rocker_tlv* FUNC11 (struct rocker_desc_info*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct rocker_port*,struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct rocker_port*,struct rocker_desc_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int FUNC17 (struct sk_buff*) ; 
 TYPE_2__* FUNC18 (struct sk_buff*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static netdev_tx_t FUNC20(struct sk_buff *skb, struct net_device *dev)
{
	struct rocker_port *rocker_port = FUNC3(dev);
	struct rocker *rocker = rocker_port->rocker;
	struct rocker_desc_info *desc_info;
	struct rocker_tlv *frags;
	int i;
	int err;

	desc_info = FUNC7(&rocker_port->tx_ring);
	if (FUNC19(!desc_info)) {
		if (FUNC1())
			FUNC2(dev, "tx ring full when queue awake\n");
		return NETDEV_TX_BUSY;
	}

	FUNC5(desc_info, skb);

	frags = FUNC11(desc_info, ROCKER_TLV_TX_FRAGS);
	if (!frags)
		goto out;
	err = FUNC12(rocker_port, desc_info,
					  skb->data, FUNC16(skb));
	if (err)
		goto nest_cancel;
	if (FUNC18(skb)->nr_frags > ROCKER_TX_FRAGS_MAX) {
		err = FUNC17(skb);
		if (err)
			goto unmap_frags;
	}

	for (i = 0; i < FUNC18(skb)->nr_frags; i++) {
		const skb_frag_t *frag = &FUNC18(skb)->frags[i];

		err = FUNC12(rocker_port, desc_info,
						  FUNC14(frag),
						  FUNC15(frag));
		if (err)
			goto unmap_frags;
	}
	FUNC10(desc_info, frags);

	FUNC6(desc_info);
	FUNC8(rocker, &rocker_port->tx_ring, desc_info);

	desc_info = FUNC7(&rocker_port->tx_ring);
	if (!desc_info)
		FUNC4(dev);

	return NETDEV_TX_OK;

unmap_frags:
	FUNC13(rocker_port, desc_info);
nest_cancel:
	FUNC9(desc_info, frags);
out:
	FUNC0(skb);
	dev->stats.tx_dropped++;

	return NETDEV_TX_OK;
}