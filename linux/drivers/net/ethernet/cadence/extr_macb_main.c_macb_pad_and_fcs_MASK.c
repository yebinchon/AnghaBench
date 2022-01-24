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
typedef  int u32 ;
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  data; int /*<<< orphan*/  head; } ;
struct net_device {int features; } ;
struct TYPE_2__ {scalar_t__ gso_size; } ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int ENOMEM ; 
 int ETH_FCS_LEN ; 
 int ETH_ZLEN ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int NETIF_F_HW_CSUM ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*) ; 
 int FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 
 TYPE_1__* FUNC10 (struct sk_buff*) ; 
 int FUNC11 (struct sk_buff*) ; 

__attribute__((used)) static int FUNC12(struct sk_buff **skb, struct net_device *ndev)
{
	bool cloned = FUNC3(*skb) || FUNC5(*skb);
	int padlen = ETH_ZLEN - (*skb)->len;
	int headroom = FUNC6(*skb);
	int tailroom = FUNC11(*skb);
	struct sk_buff *nskb;
	u32 fcs;

	if (!(ndev->features & NETIF_F_HW_CSUM) ||
	    !((*skb)->ip_summed != CHECKSUM_PARTIAL) ||
	    FUNC10(*skb)->gso_size)	/* Not available for GSO */
		return 0;

	if (padlen <= 0) {
		/* FCS could be appeded to tailroom. */
		if (tailroom >= ETH_FCS_LEN)
			goto add_fcs;
		/* FCS could be appeded by moving data to headroom. */
		else if (!cloned && headroom + tailroom >= ETH_FCS_LEN)
			padlen = 0;
		/* No room for FCS, need to reallocate skb. */
		else
			padlen = ETH_FCS_LEN;
	} else {
		/* Add room for FCS. */
		padlen += ETH_FCS_LEN;
	}

	if (!cloned && headroom + tailroom >= padlen) {
		(*skb)->data = FUNC2((*skb)->head, (*skb)->data, (*skb)->len);
		FUNC9(*skb, (*skb)->len);
	} else {
		nskb = FUNC4(*skb, 0, padlen, GFP_ATOMIC);
		if (!nskb)
			return -ENOMEM;

		FUNC1(*skb);
		*skb = nskb;
	}

	if (padlen > ETH_FCS_LEN)
		FUNC8(*skb, padlen - ETH_FCS_LEN);

add_fcs:
	/* set FCS to packet */
	fcs = FUNC0(~0, (*skb)->data, (*skb)->len);
	fcs = ~fcs;

	FUNC7(*skb, fcs		& 0xff);
	FUNC7(*skb, (fcs >> 8)	& 0xff);
	FUNC7(*skb, (fcs >> 16)	& 0xff);
	FUNC7(*skb, (fcs >> 24)	& 0xff);

	return 0;
}