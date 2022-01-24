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
struct efx_tx_queue {scalar_t__ piobuf; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct efx_tx_queue*) ; 
 struct efx_tx_queue* FUNC1 (struct efx_tx_queue*) ; 

__attribute__((used)) static inline bool FUNC2(struct efx_tx_queue *tx_queue)
{
	struct efx_tx_queue *partner = FUNC1(tx_queue);

	return tx_queue->piobuf && FUNC0(tx_queue) &&
	       FUNC0(partner);
}