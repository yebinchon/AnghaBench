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
struct sge_rspq {int /*<<< orphan*/  cidx; int /*<<< orphan*/  next_holdoff; int /*<<< orphan*/  cntxt_id; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_GTS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC6(struct adapter *adap,
					struct sge_rspq *rq)
{
	int work;

	work = FUNC3(adap, FUNC4(rq), -1);
	FUNC5(adap, A_SG_GTS, FUNC2(rq->cntxt_id) |
		     FUNC1(rq->next_holdoff) | FUNC0(rq->cidx));
	return work;
}