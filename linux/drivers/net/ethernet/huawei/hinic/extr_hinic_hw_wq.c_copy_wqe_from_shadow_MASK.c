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
typedef  int /*<<< orphan*/  u16 ;
struct hinic_wq {int /*<<< orphan*/  wqebb_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_wq*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hinic_wq*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (struct hinic_wq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct hinic_wq *wq, void *shadow_addr,
				 int num_wqebbs, u16 idx)
{
	void *wqebb_addr;
	int i;

	for (i = 0; i < num_wqebbs; i++, idx++) {
		idx = FUNC0(wq, idx);
		wqebb_addr = FUNC2(wq, idx) +
			     FUNC1(wq, idx);

		FUNC3(wqebb_addr, shadow_addr, wq->wqebb_size);
		shadow_addr += wq->wqebb_size;
	}
}