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
typedef  int u8 ;
struct il_tx_queue {int swq_id; } ;
struct il_priv {int /*<<< orphan*/  queue_stopped; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct il_priv*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2(struct il_priv *il, struct il_tx_queue *txq)
{
	u8 queue = txq->swq_id;
	u8 ac = queue & 3;
	u8 hwq = (queue >> 2) & 0x1f;

	if (!FUNC1(hwq, il->queue_stopped))
		FUNC0(il, ac);
}