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
struct sk_buff {int len; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct macsec_tx_sa {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_sc; } ;
struct macsec_dev {TYPE_1__ secy; } ;
struct crypto_async_request {struct sk_buff* data; } ;
struct TYPE_4__ {struct macsec_tx_sa* tx_sa; int /*<<< orphan*/  req; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ *,struct macsec_tx_sa*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct net_device*) ; 
 struct macsec_dev* FUNC6 (struct net_device*) ; 
 TYPE_2__* FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct macsec_tx_sa*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct crypto_async_request *base, int err)
{
	struct sk_buff *skb = base->data;
	struct net_device *dev = skb->dev;
	struct macsec_dev *macsec = FUNC6(dev);
	struct macsec_tx_sa *sa = FUNC7(skb)->tx_sa;
	int len, ret;

	FUNC0(FUNC7(skb)->req);

	FUNC9();
	FUNC5(skb, dev);
	FUNC4(skb, &macsec->secy.tx_sc, FUNC7(skb)->tx_sa);
	len = skb->len;
	ret = FUNC3(skb);
	FUNC1(dev, ret, len);
	FUNC10();

	FUNC8(sa);
	FUNC2(dev);
}