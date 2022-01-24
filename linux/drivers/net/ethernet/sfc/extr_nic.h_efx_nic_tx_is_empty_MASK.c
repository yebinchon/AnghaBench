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
struct efx_tx_queue {int /*<<< orphan*/  packet_write_count; TYPE_2__* efx; } ;
struct TYPE_4__ {TYPE_1__* type; } ;
struct TYPE_3__ {int /*<<< orphan*/  option_descriptors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct efx_tx_queue*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC2(struct efx_tx_queue *tx_queue)
{
	FUNC0(!tx_queue->efx->type->option_descriptors);
	return FUNC1(tx_queue, tx_queue->packet_write_count);
}