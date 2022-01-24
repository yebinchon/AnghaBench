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
struct veth_xdp_tx_bq {int count; int /*<<< orphan*/ * q; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int,int) ; 
 int FUNC1 (struct net_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev, struct veth_xdp_tx_bq *bq)
{
	int sent, i, err = 0;

	sent = FUNC1(dev, bq->count, bq->q, 0);
	if (sent < 0) {
		err = sent;
		sent = 0;
		for (i = 0; i < bq->count; i++)
			FUNC2(bq->q[i]);
	}
	FUNC0(dev, sent, bq->count - sent, err);

	bq->count = 0;
}