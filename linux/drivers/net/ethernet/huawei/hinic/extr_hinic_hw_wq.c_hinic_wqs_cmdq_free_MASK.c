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
struct hinic_wq {int /*<<< orphan*/  num_q_pages; } ;
struct hinic_cmdq_pages {int /*<<< orphan*/  hwif; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_cmdq_pages*) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_wq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hinic_cmdq_pages *cmdq_pages,
			 struct hinic_wq *wq, int cmdq_blocks)
{
	int i;

	for (i = 0; i < cmdq_blocks; i++)
		FUNC1(&wq[i], cmdq_pages->hwif, wq[i].num_q_pages);

	FUNC0(cmdq_pages);
}