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
struct fm10k_intfc {int /*<<< orphan*/  dbg_intfc; int /*<<< orphan*/  pdev; } ;

/* Variables and functions */
 scalar_t__ dbg_root ; 
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct fm10k_intfc *interface)
{
	const char *name = FUNC1(interface->pdev);

	if (dbg_root)
		interface->dbg_intfc = FUNC0(name, dbg_root);
}