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
typedef  int u32 ;
struct tx_ring_info {struct sk_buff* skb; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_2__ stats; } ;
struct ace_private {int tx_ret_csm; int /*<<< orphan*/  pdev; TYPE_1__* skb; } ;
struct TYPE_3__ {struct tx_ring_info* tx_skbuff; } ;

/* Variables and functions */
 int FUNC0 (struct ace_private*) ; 
 int /*<<< orphan*/  PCI_DMA_TODEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct tx_ring_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct tx_ring_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct tx_ring_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  maplen ; 
 int /*<<< orphan*/  mapping ; 
 struct ace_private* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static inline void FUNC10(struct net_device *dev,
			      u32 txcsm, u32 idx)
{
	struct ace_private *ap = FUNC5(dev);

	do {
		struct sk_buff *skb;
		struct tx_ring_info *info;

		info = ap->skb->tx_skbuff + idx;
		skb = info->skb;

		if (FUNC3(info, maplen)) {
			FUNC8(ap->pdev, FUNC2(info, mapping),
				       FUNC3(info, maplen),
				       PCI_DMA_TODEVICE);
			FUNC4(info, maplen, 0);
		}

		if (skb) {
			dev->stats.tx_packets++;
			dev->stats.tx_bytes += skb->len;
			FUNC1(skb);
			info->skb = NULL;
		}

		idx = (idx + 1) % FUNC0(ap);
	} while (idx != txcsm);

	if (FUNC6(dev))
		FUNC7(dev);

	FUNC9();
	ap->tx_ret_csm = txcsm;

	/* So... tx_ret_csm is advanced _after_ check for device wakeup.
	 *
	 * We could try to make it before. In this case we would get
	 * the following race condition: hard_start_xmit on other cpu
	 * enters after we advanced tx_ret_csm and fills space,
	 * which we have just freed, so that we make illegal device wakeup.
	 * There is no good way to workaround this (at entry
	 * to ace_start_xmit detects this condition and prevents
	 * ring corruption, but it is not a good workaround.)
	 *
	 * When tx_ret_csm is advanced after, we wake up device _only_
	 * if we really have some space in ring (though the core doing
	 * hard_start_xmit can see full ring for some period and has to
	 * synchronize.) Superb.
	 * BUT! We get another subtle race condition. hard_start_xmit
	 * may think that ring is full between wakeup and advancing
	 * tx_ret_csm and will stop device instantly! It is not so bad.
	 * We are guaranteed that there is something in ring, so that
	 * the next irq will resume transmission. To speedup this we could
	 * mark descriptor, which closes ring with BD_FLG_COAL_NOW
	 * (see ace_start_xmit).
	 *
	 * Well, this dilemma exists in all lock-free devices.
	 * We, following scheme used in drivers by Donald Becker,
	 * select the least dangerous.
	 *							--ANK
	 */
}