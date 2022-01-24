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
struct sunqe_buffers {TYPE_1__* qe_rxd; } ;
struct sunqe {scalar_t__ tx_old; scalar_t__ tx_new; scalar_t__ rx_old; scalar_t__ rx_new; int /*<<< orphan*/  buffers_dvma; struct sunqe_buffers* buffers; struct sunqe_buffers* qe_block; } ;
struct qe_init_block {TYPE_1__* qe_rxd; } ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {int rx_flags; scalar_t__ rx_addr; } ;
typedef  int RXD_PKT_SZ ;

/* Variables and functions */
 int /*<<< orphan*/  RXD_LENGTH ; 
 int RXD_OWN ; 
 int RX_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct sunqe_buffers*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rx_buf ; 

__attribute__((used)) static void FUNC2(struct sunqe *qep)
{
	struct qe_init_block *qb = qep->qe_block;
	struct sunqe_buffers *qbufs = qep->buffers;
	__u32 qbufs_dvma = (__u32)qep->buffers_dvma;
	int i;

	qep->rx_new = qep->rx_old = qep->tx_new = qep->tx_old = 0;
	FUNC0(qb, 0, sizeof(struct qe_init_block));
	FUNC0(qbufs, 0, sizeof(struct sunqe_buffers));
	for (i = 0; i < RX_RING_SIZE; i++) {
		qb->qe_rxd[i].rx_addr = qbufs_dvma + FUNC1(rx_buf, i);
		qb->qe_rxd[i].rx_flags =
			(RXD_OWN | ((RXD_PKT_SZ) & RXD_LENGTH));
	}
}