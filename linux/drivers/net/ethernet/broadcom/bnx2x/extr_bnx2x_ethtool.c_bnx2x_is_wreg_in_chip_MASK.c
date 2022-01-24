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
struct wreg_addr {int /*<<< orphan*/  chips; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bnx2x*) ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 scalar_t__ FUNC3 (struct bnx2x*) ; 
 scalar_t__ FUNC4 (struct bnx2x*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC10(struct bnx2x *bp,
	const struct wreg_addr *wreg_info)
{
	if (FUNC0(bp))
		return FUNC6(wreg_info->chips);
	else if (FUNC1(bp))
		return FUNC5(wreg_info->chips);
	else if (FUNC2(bp))
		return FUNC7(wreg_info->chips);
	else if (FUNC3(bp))
		return FUNC8(wreg_info->chips);
	else if (FUNC4(bp))
		return FUNC9(wreg_info->chips);
	else
		return false;
}