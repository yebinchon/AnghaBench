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
typedef  int /*<<< orphan*/  u32 ;
struct il_queue {scalar_t__ read_ptr; scalar_t__ write_ptr; int /*<<< orphan*/  id; } ;
struct TYPE_3__ {int max_txq_num; } ;
struct il_priv {int cmd_queue; int /*<<< orphan*/  mutex; TYPE_2__* txq; TYPE_1__ hw_params; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_hw {struct il_priv* priv; } ;
struct TYPE_4__ {struct il_queue q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

void FUNC7(struct ieee80211_hw *hw, struct ieee80211_vif *vif,
		  u32 queues, bool drop)
{
	struct il_priv *il = hw->priv;
	unsigned long timeout = jiffies + FUNC2(500);
	int i;

	FUNC4(&il->mutex);
	FUNC0("enter\n");

	if (il->txq == NULL)
		goto out;

	for (i = 0; i < il->hw_params.max_txq_num; i++) {
		struct il_queue *q;

		if (i == il->cmd_queue)
			continue;

		q = &il->txq[i].q;
		if (q->read_ptr == q->write_ptr)
			continue;

		if (FUNC6(jiffies, timeout)) {
			FUNC1("Failed to flush queue %d\n", q->id);
			break;
		}

		FUNC3(20);
	}
out:
	FUNC0("leave\n");
	FUNC5(&il->mutex);
}