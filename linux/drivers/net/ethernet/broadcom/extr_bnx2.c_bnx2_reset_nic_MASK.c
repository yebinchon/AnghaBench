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
typedef  int /*<<< orphan*/  u32 ;
struct bnx2 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bnx2*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2*) ; 
 int FUNC2 (struct bnx2*) ; 
 int FUNC3 (struct bnx2*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct bnx2 *bp, u32 reset_code)
{
	int rc;

	rc = FUNC3(bp, reset_code);
	FUNC0(bp);
	if (rc)
		return rc;

	if ((rc = FUNC2(bp)) != 0)
		return rc;

	FUNC1(bp);
	return 0;
}