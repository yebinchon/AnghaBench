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
struct nand_onfi_params {int /*<<< orphan*/  revision; } ;
struct nand_chip {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ONFI_VERSION_1_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct nand_chip *chip,
					 struct nand_onfi_params *p)
{
	/*
	 * MT29F1G08ABAFAWP-ITE:F and possibly others report 00 00 for the
	 * revision number field of the ONFI parameter page. Assume ONFI
	 * version 1.0 if the revision number is 00 00.
	 */
	if (FUNC1(p->revision) == 0)
		p->revision = FUNC0(ONFI_VERSION_1_0);
}