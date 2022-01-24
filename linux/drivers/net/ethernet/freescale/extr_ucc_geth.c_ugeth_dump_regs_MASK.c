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
struct ucc_geth_private {int /*<<< orphan*/  uccf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucc_geth_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct ucc_geth_private *ugeth)
{
#ifdef DEBUG
	ucc_fast_dump_regs(ugeth->uccf);
	dump_regs(ugeth);
	dump_bds(ugeth);
#endif
}