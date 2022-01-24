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
typedef  scalar_t__ u32 ;
struct ipw_priv {int /*<<< orphan*/  net_dev; int /*<<< orphan*/  tx_packets; } ;
struct clx2_queue {scalar_t__ n_bd; scalar_t__ last_used; scalar_t__ low_mark; int first_empty; int /*<<< orphan*/  reg_r; } ;
struct clx2_tx_queue {struct clx2_queue q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*,struct clx2_tx_queue*) ; 
 scalar_t__ FUNC3 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct clx2_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct ipw_priv *priv,
				struct clx2_tx_queue *txq, int qindex)
{
	u32 hw_tail;
	int used;
	struct clx2_queue *q = &txq->q;

	hw_tail = FUNC3(priv, q->reg_r);
	if (hw_tail >= q->n_bd) {
		FUNC0
		    ("Read index for DMA queue (%d) is out of range [0-%d)\n",
		     hw_tail, q->n_bd);
		goto done;
	}
	for (; q->last_used != hw_tail;
	     q->last_used = FUNC1(q->last_used, q->n_bd)) {
		FUNC2(priv, txq);
		priv->tx_packets++;
	}
      done:
	if ((FUNC4(q) > q->low_mark) &&
	    (qindex >= 0))
		FUNC5(priv->net_dev);
	used = q->first_empty - q->last_used;
	if (used < 0)
		used += q->n_bd;

	return used;
}