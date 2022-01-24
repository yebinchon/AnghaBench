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
struct hinic_wqs {int /*<<< orphan*/  hwif; } ;
struct hinic_wq {int /*<<< orphan*/  block_idx; int /*<<< orphan*/  page_idx; int /*<<< orphan*/  num_q_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_wq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hinic_wqs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct hinic_wqs *wqs, struct hinic_wq *wq)
{
	FUNC0(wq, wqs->hwif, wq->num_q_pages);

	FUNC1(wqs, wq->page_idx, wq->block_idx);
}