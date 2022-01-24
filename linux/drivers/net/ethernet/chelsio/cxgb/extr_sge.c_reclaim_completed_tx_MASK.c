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
struct sge {int dummy; } ;
struct cmdQ {unsigned int processed; unsigned int cleaned; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge*,struct cmdQ*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,unsigned int) ; 

__attribute__((used)) static inline void FUNC2(struct sge *sge, struct cmdQ *q)
{
	unsigned int reclaim = q->processed - q->cleaned;

	if (reclaim) {
		FUNC1("reclaim_completed_tx processed:%d cleaned:%d\n",
			 q->processed, q->cleaned);
		FUNC0(sge, q, reclaim);
		q->cleaned += reclaim;
	}
}