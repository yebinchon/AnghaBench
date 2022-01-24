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
struct TYPE_2__ {int /*<<< orphan*/  tx_state; } ;
struct scc_channel {int /*<<< orphan*/  lock; TYPE_1__ stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  TXS_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC2(struct scc_channel *scc)
{
	unsigned long flags;

	FUNC0(&scc->lock, flags);	
	scc->stat.tx_state = TXS_IDLE;
	FUNC1(&scc->lock, flags);
}