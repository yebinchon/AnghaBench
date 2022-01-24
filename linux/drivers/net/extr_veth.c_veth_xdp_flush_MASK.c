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
struct veth_xdp_tx_bq {int dummy; } ;
struct veth_rq {int /*<<< orphan*/  xdp_prog; } ;
struct veth_priv {struct veth_rq* rq; int /*<<< orphan*/  peer; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct veth_rq*) ; 
 struct veth_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct net_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int) ; 
 size_t FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,struct veth_xdp_tx_bq*) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev, struct veth_xdp_tx_bq *bq)
{
	struct veth_priv *rcv_priv, *priv = FUNC1(dev);
	struct net_device *rcv;
	struct veth_rq *rq;

	FUNC4();
	FUNC8(dev, bq);
	rcv = FUNC3(priv->peer);
	if (FUNC6(!rcv))
		goto out;

	rcv_priv = FUNC1(rcv);
	rq = &rcv_priv->rq[FUNC7(rcv)];
	/* xdp_ring is initialized on receive side? */
	if (FUNC6(!FUNC2(rq->xdp_prog)))
		goto out;

	FUNC0(rq);
out:
	FUNC5();
}