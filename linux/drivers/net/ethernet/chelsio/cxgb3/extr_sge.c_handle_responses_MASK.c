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
struct sge_rspq {size_t cidx; int /*<<< orphan*/  holdoff_tmr; int /*<<< orphan*/  cntxt_id; struct rsp_desc* desc; } ;
struct sge_qset {int /*<<< orphan*/  napi; } ;
struct rsp_desc {int dummy; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_GTS ; 
 int FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct rsp_desc*,struct sge_rspq*) ; 
 scalar_t__ FUNC5 (struct rsp_desc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct adapter*,struct sge_qset*,struct rsp_desc*) ; 
 struct sge_qset* FUNC8 (struct sge_rspq*) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC10(struct adapter *adap, struct sge_rspq *q)
{
	struct sge_qset *qs = FUNC8(q);
	struct rsp_desc *r = &q->desc[q->cidx];

	if (!FUNC4(r, q))
		return -1;
	FUNC3();
	if (FUNC5(r) && FUNC7(adap, qs, r) == 0) {
		FUNC9(adap, A_SG_GTS, FUNC2(q->cntxt_id) |
			     FUNC1(q->holdoff_tmr) | FUNC0(q->cidx));
		return 0;
	}
	FUNC6(&qs->napi);
	return 1;
}