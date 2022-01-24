#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tun_struct {TYPE_2__* pcpu_stats; int /*<<< orphan*/  txflt; int /*<<< orphan*/  steering_prog; int /*<<< orphan*/ * tfiles; } ;
struct TYPE_5__ {TYPE_3__* sk; } ;
struct tun_file {int flags; TYPE_1__ socket; int /*<<< orphan*/  fasync; int /*<<< orphan*/  tx_ring; } ;
struct sk_buff {int queue_mapping; int len; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  netdev_tx_t ;
struct TYPE_7__ {int /*<<< orphan*/  (* sk_data_ready ) (TYPE_3__*) ;scalar_t__ sk_filter; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_dropped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 int /*<<< orphan*/  NET_XMIT_DROP ; 
 int /*<<< orphan*/  POLL_IN ; 
 int /*<<< orphan*/  SIGIO ; 
 int TUN_FASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tun_struct* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct tun_file* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (struct tun_struct*,struct sk_buff*,int) ; 
 scalar_t__ FUNC12 (TYPE_3__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct tun_struct*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct tun_struct*,char*,int) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC22(struct sk_buff *skb, struct net_device *dev)
{
	struct tun_struct *tun = FUNC4(dev);
	int txq = skb->queue_mapping;
	struct tun_file *tfile;
	int len = skb->len;

	FUNC9();
	tfile = FUNC8(tun->tfiles[txq]);

	/* Drop packet if interface is not attached */
	if (!tfile)
		goto drop;

	if (!FUNC8(tun->steering_prog))
		FUNC19(tun, skb);

	FUNC20(KERN_INFO, tun, "tun_net_xmit %d\n", skb->len);

	FUNC0(!tfile);

	/* Drop if the filter does not like it.
	 * This is a noop if the filter is disabled.
	 * Filter can be enabled only for the TAP devices. */
	if (!FUNC1(&tun->txflt, skb))
		goto drop;

	if (tfile->socket.sk->sk_filter &&
	    FUNC12(tfile->socket.sk, skb))
		goto drop;

	len = FUNC11(tun, skb, len);
	if (len == 0 || FUNC6(skb, len))
		goto drop;

	if (FUNC21(FUNC14(skb, GFP_ATOMIC)))
		goto drop;

	FUNC16(skb);

	/* Orphan the skb - required as we might hang on to it
	 * for indefinite time.
	 */
	FUNC13(skb);

	FUNC5(skb);

	if (FUNC7(&tfile->tx_ring, skb))
		goto drop;

	/* Notify and wake up reader process */
	if (tfile->flags & TUN_FASYNC)
		FUNC3(&tfile->fasync, SIGIO, POLL_IN);
	tfile->socket.sk->sk_data_ready(tfile->socket.sk);

	FUNC10();
	return NETDEV_TX_OK;

drop:
	FUNC18(tun->pcpu_stats->tx_dropped);
	FUNC15(skb);
	FUNC2(skb);
	FUNC10();
	return NET_XMIT_DROP;
}