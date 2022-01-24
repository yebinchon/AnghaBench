#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct work_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  work; } ;
struct TYPE_4__ {TYPE_1__ wk; int /*<<< orphan*/  wq; } ;
struct lio {TYPE_2__ txq_status_wq; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIO_IFSTATE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct lio*) ; 
 int /*<<< orphan*/  FUNC1 (struct lio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct work_struct *work)
{
	struct cavium_wk *wk = (struct cavium_wk *)work;
	struct lio *lio = (struct lio *)wk->ctxptr;

	if (!FUNC1(lio, LIO_IFSTATE_RUNNING))
		return;

	FUNC0(lio);
	FUNC3(lio->txq_status_wq.wq,
			   &lio->txq_status_wq.wk.work, FUNC2(1));
}