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
typedef  size_t u16 ;
struct hinic_cmdq {int /*<<< orphan*/  cmdq_lock; scalar_t__* done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_cmdq*,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct hinic_cmdq *cmdq, u16 cons_idx,
				  int errcode)
{
	u16 prod_idx = cons_idx;

	FUNC2(&cmdq->cmdq_lock);
	FUNC0(cmdq, prod_idx, errcode);

	FUNC4();  /* write all before update for the command request */

	if (cmdq->done[prod_idx])
		FUNC1(cmdq->done[prod_idx]);
	FUNC3(&cmdq->cmdq_lock);
}