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
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 scalar_t__ bnx2x_num_queues ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct bnx2x *bp)
{
	int nq = bnx2x_num_queues ? : FUNC3();

	/* Reduce memory usage in kdump environment by using only one queue */
	if (FUNC2())
		nq = 1;

	nq = FUNC1(nq, 1, FUNC0(bp));
	return nq;
}