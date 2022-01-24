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
struct work_struct {int dummy; } ;
struct hinic_eq_work {struct hinic_eq* data; } ;
struct hinic_eq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hinic_eq*) ; 
 struct hinic_eq_work* FUNC1 (struct work_struct*) ; 

__attribute__((used)) static void FUNC2(struct work_struct *work)
{
	struct hinic_eq_work *aeq_work = FUNC1(work);
	struct hinic_eq *aeq;

	aeq = aeq_work->data;
	FUNC0(aeq);
}