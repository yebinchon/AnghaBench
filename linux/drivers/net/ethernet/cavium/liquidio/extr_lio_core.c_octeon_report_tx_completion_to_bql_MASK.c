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
struct netdev_queue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netdev_queue*,unsigned int,unsigned int) ; 

void FUNC1(void *txq, unsigned int pkts_compl,
					unsigned int bytes_compl)
{
	struct netdev_queue *netdev_queue = txq;

	FUNC0(netdev_queue, pkts_compl, bytes_compl);
}