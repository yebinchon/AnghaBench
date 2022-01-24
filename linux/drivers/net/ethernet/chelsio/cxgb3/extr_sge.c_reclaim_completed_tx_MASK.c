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
struct sge_txq {unsigned int processed; unsigned int cleaned; unsigned int in_use; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct sge_txq*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static inline unsigned int FUNC2(struct adapter *adapter,
						struct sge_txq *q,
						unsigned int chunk)
{
	unsigned int reclaim = q->processed - q->cleaned;

	reclaim = FUNC1(chunk, reclaim);
	if (reclaim) {
		FUNC0(adapter, q, reclaim);
		q->cleaned += reclaim;
		q->in_use -= reclaim;
	}
	return q->processed - q->cleaned;
}