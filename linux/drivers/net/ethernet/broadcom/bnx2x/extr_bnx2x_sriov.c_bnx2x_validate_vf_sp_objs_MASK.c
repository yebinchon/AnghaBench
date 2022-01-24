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
struct bnx2x_virtf {int dummy; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  BNX2X_MSG_IOV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnx2x_virtf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp_initialized ; 

__attribute__((used)) static bool FUNC3(struct bnx2x *bp,
				       struct bnx2x_virtf *vf,
				       bool print_err)
{
	if (!FUNC2(vf, sp_initialized)) {
		if (print_err)
			FUNC0("Slowpath objects not yet initialized!\n");
		else
			FUNC1(BNX2X_MSG_IOV, "Slowpath objects not yet initialized!\n");
		return false;
	}
	return true;
}