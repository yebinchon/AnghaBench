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
struct bnxt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC2 (struct bnxt*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC4 (struct bnxt*) ; 
 int /*<<< orphan*/  FUNC5 (struct bnxt*) ; 

__attribute__((used)) static int FUNC6(struct bnxt *bp, bool irq_re_init)
{
	FUNC1(bp);
	FUNC3(bp);
	FUNC4(bp);
	FUNC2(bp, irq_re_init);
	FUNC5(bp);

	return FUNC0(bp, irq_re_init);
}