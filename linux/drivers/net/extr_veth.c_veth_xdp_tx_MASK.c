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
struct xdp_frame {int dummy; } ;
struct xdp_buff {int dummy; } ;
struct veth_xdp_tx_bq {scalar_t__ count; struct xdp_frame** q; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOVERFLOW ; 
 scalar_t__ VETH_XDP_TX_BULK_SIZE ; 
 struct xdp_frame* FUNC0 (struct xdp_buff*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct veth_xdp_tx_bq*) ; 

__attribute__((used)) static int FUNC3(struct net_device *dev, struct xdp_buff *xdp,
		       struct veth_xdp_tx_bq *bq)
{
	struct xdp_frame *frame = FUNC0(xdp);

	if (FUNC1(!frame))
		return -EOVERFLOW;

	if (FUNC1(bq->count == VETH_XDP_TX_BULK_SIZE))
		FUNC2(dev, bq);

	bq->q[bq->count++] = frame;

	return 0;
}