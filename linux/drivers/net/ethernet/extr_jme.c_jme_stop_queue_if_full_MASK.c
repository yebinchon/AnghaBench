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
struct jme_ring {int /*<<< orphan*/  nr_free; int /*<<< orphan*/  next_to_clean; struct jme_buffer_info* bufinf; } ;
struct jme_buffer_info {scalar_t__ start_xmit; scalar_t__ skb; } ;
struct jme_adapter {int tx_wake_threshold; int /*<<< orphan*/  dev; struct jme_ring* txring; } ;

/* Variables and functions */
 int MAX_SKB_FRAGS ; 
 scalar_t__ TX_TIMEOUT ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tx_queued ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct jme_adapter *jme)
{
	struct jme_ring *txring = &(jme->txring[0]);
	struct jme_buffer_info *txbi = txring->bufinf;
	int idx = FUNC0(&txring->next_to_clean);

	txbi += idx;

	FUNC4();
	if (FUNC5(FUNC0(&txring->nr_free) < (MAX_SKB_FRAGS+2))) {
		FUNC2(jme->dev);
		FUNC1(jme, tx_queued, jme->dev, "TX Queue Paused\n");
		FUNC4();
		if (FUNC0(&txring->nr_free)
			>= (jme->tx_wake_threshold)) {
			FUNC3(jme->dev);
			FUNC1(jme, tx_queued, jme->dev, "TX Queue Fast Waked\n");
		}
	}

	if (FUNC5(txbi->start_xmit &&
			(jiffies - txbi->start_xmit) >= TX_TIMEOUT &&
			txbi->skb)) {
		FUNC2(jme->dev);
		FUNC1(jme, tx_queued, jme->dev,
			   "TX Queue Stopped %d@%lu\n", idx, jiffies);
	}
}