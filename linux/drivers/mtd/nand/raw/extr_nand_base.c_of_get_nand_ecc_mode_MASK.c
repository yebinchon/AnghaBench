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
struct device_node {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char**) ; 
 int ENODEV ; 
 int NAND_ECC_SOFT ; 
 char** nand_ecc_modes ; 
 int FUNC1 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	const char *pm;
	int err, i;

	err = FUNC1(np, "nand-ecc-mode", &pm);
	if (err < 0)
		return err;

	for (i = 0; i < FUNC0(nand_ecc_modes); i++)
		if (!FUNC2(pm, nand_ecc_modes[i]))
			return i;

	/*
	 * For backward compatibility we support few obsoleted values that don't
	 * have their mappings into nand_ecc_modes_t anymore (they were merged
	 * with other enums).
	 */
	if (!FUNC2(pm, "soft_bch"))
		return NAND_ECC_SOFT;

	return -ENODEV;
}