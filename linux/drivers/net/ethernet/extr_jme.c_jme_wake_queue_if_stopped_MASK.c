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
struct jme_ring {int /*<<< orphan*/  nr_free; } ;
struct jme_adapter {scalar_t__ tx_wake_threshold; int /*<<< orphan*/  dev; struct jme_ring* txring; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct jme_adapter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  tx_done ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void
FUNC6(struct jme_adapter *jme)
{
	struct jme_ring *txring = &(jme->txring[0]);

	FUNC4();
	if (FUNC5(FUNC2(jme->dev) &&
	FUNC0(&txring->nr_free) >= (jme->tx_wake_threshold))) {
		FUNC1(jme, tx_done, jme->dev, "TX Queue Waked\n");
		FUNC3(jme->dev);
	}

}