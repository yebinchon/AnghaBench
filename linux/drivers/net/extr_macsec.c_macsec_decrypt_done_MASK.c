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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct macsec_rx_sc {int dummy; } ;
struct macsec_rx_sa {struct macsec_rx_sc* sc; } ;
struct TYPE_5__ {int /*<<< orphan*/  netdev; int /*<<< orphan*/  icv_len; } ;
struct macsec_dev {int /*<<< orphan*/  gro_cells; TYPE_2__ secy; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct TYPE_6__ {int /*<<< orphan*/  packet_number; } ;
struct TYPE_4__ {int valid; int /*<<< orphan*/  has_sci; int /*<<< orphan*/  req; struct macsec_rx_sa* rx_sa; } ;

/* Variables and functions */
 scalar_t__ NET_RX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 TYPE_3__* FUNC5 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 struct macsec_dev* FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct macsec_rx_sa*) ; 
 int /*<<< orphan*/  FUNC12 (struct macsec_rx_sc*) ; 
 TYPE_1__* FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static void FUNC17(struct crypto_async_request *base, int err)
{
	struct sk_buff *skb = base->data;
	struct net_device *dev = skb->dev;
	struct macsec_dev *macsec = FUNC9(dev);
	struct macsec_rx_sa *rx_sa = FUNC13(skb)->rx_sa;
	struct macsec_rx_sc *rx_sc = rx_sa->sc;
	int len;
	u32 pn;

	FUNC0(FUNC13(skb)->req);

	if (!err)
		FUNC13(skb)->valid = true;

	FUNC15();
	pn = FUNC14(FUNC5(skb)->packet_number);
	if (!FUNC8(skb, &macsec->secy, pn)) {
		FUNC16();
		FUNC4(skb);
		goto out;
	}

	FUNC7(skb, macsec->secy.icv_len,
			    FUNC6(FUNC13(skb)->has_sci));
	FUNC10(skb, macsec->secy.netdev);

	len = skb->len;
	if (FUNC3(&macsec->gro_cells, skb) == NET_RX_SUCCESS)
		FUNC1(dev, len);

	FUNC16();

out:
	FUNC11(rx_sa);
	FUNC12(rx_sc);
	FUNC2(dev);
}