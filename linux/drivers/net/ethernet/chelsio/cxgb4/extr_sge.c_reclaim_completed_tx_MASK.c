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
struct sge_txq {int in_use; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int MAX_TX_RECLAIM ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct sge_txq*,int,int) ; 
 int FUNC1 (struct sge_txq*) ; 

__attribute__((used)) static inline int FUNC2(struct adapter *adap, struct sge_txq *q,
				       int maxreclaim, bool unmap)
{
	int reclaim = FUNC1(q);

	if (reclaim) {
		/*
		 * Limit the amount of clean up work we do at a time to keep
		 * the Tx lock hold time O(1).
		 */
		if (maxreclaim < 0)
			maxreclaim = MAX_TX_RECLAIM;
		if (reclaim > maxreclaim)
			reclaim = maxreclaim;

		FUNC0(adap, q, reclaim, unmap);
		q->in_use -= reclaim;
	}

	return reclaim;
}