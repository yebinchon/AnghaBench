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
struct sge_rspq {int /*<<< orphan*/  cntxt_id; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_SG_RSPQ_CREDIT_RETURN ; 
 int FUNC0 (unsigned int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct adapter*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC4(struct adapter *adapter,
			       const struct sge_rspq *q, unsigned int credits)
{
	FUNC2();
	FUNC3(adapter, A_SG_RSPQ_CREDIT_RETURN,
		     FUNC1(q->cntxt_id) | FUNC0(credits));
}