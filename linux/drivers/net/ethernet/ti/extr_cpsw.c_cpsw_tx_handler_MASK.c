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
struct xdp_frame {int dummy; } ;
struct sk_buff {struct net_device* dev; } ;
struct netdev_queue {int dummy; } ;
struct TYPE_3__ {int tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct net_device {TYPE_1__ stats; } ;
struct cpsw_meta_xdp {int ch; struct net_device* ndev; } ;
struct TYPE_4__ {int /*<<< orphan*/  cpts; } ;

/* Variables and functions */
 int CPSW_XMETA_OFFSET ; 
 struct xdp_frame* FUNC0 (void*) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 TYPE_2__* FUNC4 (struct net_device*) ; 
 struct netdev_queue* FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct netdev_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct netdev_queue*) ; 
 int FUNC8 (struct sk_buff*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct xdp_frame*) ; 

void FUNC11(void *token, int len, int status)
{
	struct cpsw_meta_xdp	*xmeta;
	struct xdp_frame	*xdpf;
	struct net_device	*ndev;
	struct netdev_queue	*txq;
	struct sk_buff		*skb;
	int			ch;

	if (FUNC1(token)) {
		xdpf = FUNC0(token);
		xmeta = (void *)xdpf + CPSW_XMETA_OFFSET;
		ndev = xmeta->ndev;
		ch = xmeta->ch;
		FUNC10(xdpf);
	} else {
		skb = token;
		ndev = skb->dev;
		ch = FUNC8(skb);
		FUNC2(FUNC4(ndev)->cpts, skb);
		FUNC3(skb);
	}

	/* Check whether the queue is stopped due to stalled tx dma, if the
	 * queue is stopped then start the queue as we have free desc for tx
	 */
	txq = FUNC5(ndev, ch);
	if (FUNC9(FUNC6(txq)))
		FUNC7(txq);

	ndev->stats.tx_packets++;
	ndev->stats.tx_bytes += len;
}