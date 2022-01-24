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
typedef  int /*<<< orphan*/  u32 ;
struct txdesc {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  data; int /*<<< orphan*/  len; } ;
struct jme_ring {struct jme_buffer_info* bufinf; struct txdesc* desc; } ;
struct jme_buffer_info {int dummy; } ;
struct jme_adapter {int tx_ring_mask; int /*<<< orphan*/  pdev; TYPE_1__* dev; struct jme_ring* txring; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_4__ {int nr_frags; int /*<<< orphan*/ * frags; } ;
struct TYPE_3__ {int features; } ;

/* Variables and functions */
 int NETIF_F_HIGHDMA ; 
 int /*<<< orphan*/  FUNC0 (struct jme_adapter*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct txdesc*,struct jme_buffer_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff*) ; 
 TYPE_2__* FUNC8 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct jme_adapter *jme, struct sk_buff *skb, int idx)
{
	struct jme_ring *txring = &(jme->txring[0]);
	struct txdesc *txdesc = txring->desc, *ctxdesc;
	struct jme_buffer_info *txbi = txring->bufinf, *ctxbi;
	bool hidma = jme->dev->features & NETIF_F_HIGHDMA;
	int i, nr_frags = FUNC8(skb)->nr_frags;
	int mask = jme->tx_ring_mask;
	u32 len;
	int ret = 0;

	for (i = 0 ; i < nr_frags ; ++i) {
		const skb_frag_t *frag = &FUNC8(skb)->frags[i];

		ctxdesc = txdesc + ((idx + i + 2) & (mask));
		ctxbi = txbi + ((idx + i + 2) & (mask));

		ret = FUNC1(jme->pdev, ctxdesc, ctxbi,
				      FUNC4(frag), FUNC3(frag),
				      FUNC5(frag), hidma);
		if (ret) {
			FUNC0(jme, idx, i);
			goto out;
		}
	}

	len = FUNC7(skb) ? FUNC6(skb) : skb->len;
	ctxdesc = txdesc + ((idx + 1) & (mask));
	ctxbi = txbi + ((idx + 1) & (mask));
	ret = FUNC1(jme->pdev, ctxdesc, ctxbi, FUNC9(skb->data),
			FUNC2(skb->data), len, hidma);
	if (ret)
		FUNC0(jme, idx, i);

out:
	return ret;

}