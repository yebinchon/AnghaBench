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
struct il_rx_queue {int write; int /*<<< orphan*/  bd; } ;
struct il_priv {int /*<<< orphan*/  status; int /*<<< orphan*/  lock; struct il_rx_queue rxq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  S_INIT ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,struct il_rx_queue*) ; 
 int /*<<< orphan*/  FUNC5 (struct il_priv*,struct il_rx_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct il_priv*) ; 
 int FUNC8 (struct il_priv*) ; 
 int FUNC9 (struct il_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct il_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC14(struct il_priv *il)
{
	int rc;
	unsigned long flags;
	struct il_rx_queue *rxq = &il->rxq;

	FUNC12(&il->lock, flags);
	FUNC2(il);
	FUNC13(&il->lock, flags);

	FUNC7(il);
	FUNC3(il);

	/* Allocate the RX queue, or reset if it is already allocated */
	if (!rxq->bd) {
		rc = FUNC9(il);
		if (rc) {
			FUNC1("Unable to initialize Rx queue\n");
			return -ENOMEM;
		}
	} else
		FUNC5(il, rxq);

	FUNC6(il);

	FUNC4(il, rxq);

	/* Look at using this instead:
	   rxq->need_update = 1;
	   il_rx_queue_update_write_ptr(il, rxq);
	 */

	FUNC10(il, FUNC0(0), rxq->write & ~7);

	rc = FUNC8(il);
	if (rc)
		return rc;

	FUNC11(S_INIT, &il->status);

	return 0;
}