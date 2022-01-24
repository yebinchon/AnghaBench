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
typedef  scalar_t__ u8 ;
struct bnx2x_fastpath {scalar_t__ index; int /*<<< orphan*/  bp; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct bnx2x_fastpath*) ; 

__attribute__((used)) static u8 FUNC3(struct bnx2x_fastpath *fp)
{
	if (FUNC1(fp->bp))
		return FUNC0(fp->bp) + fp->index;
	else	/* We want Client ID to be the same as IGU SB ID for 57712 */
		return FUNC2(fp);
}