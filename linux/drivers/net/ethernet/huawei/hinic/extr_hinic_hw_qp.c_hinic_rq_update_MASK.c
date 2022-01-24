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
typedef  scalar_t__ u16 ;
struct hinic_rq {int /*<<< orphan*/ * pi_virt_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_rq*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct hinic_rq *rq, u16 prod_idx)
{
	*rq->pi_virt_addr = FUNC1(FUNC0(rq, prod_idx + 1));
}