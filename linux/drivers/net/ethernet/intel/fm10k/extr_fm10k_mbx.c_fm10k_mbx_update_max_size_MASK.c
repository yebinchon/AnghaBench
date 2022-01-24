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
typedef  scalar_t__ u16 ;
struct fm10k_mbx_info {int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx; scalar_t__ max_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct fm10k_mbx_info *mbx, u16 size)
{
	u16 len;

	mbx->max_size = size;

	/* flush any oversized messages from the queue */
	for (len = FUNC1(&mbx->tx);
	     len > size;
	     len = FUNC1(&mbx->tx)) {
		FUNC0(&mbx->tx);
		mbx->tx_dropped++;
	}
}