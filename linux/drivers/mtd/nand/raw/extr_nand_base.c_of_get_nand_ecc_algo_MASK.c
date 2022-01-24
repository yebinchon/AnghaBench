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
 int NAND_ECC_BCH ; 
 int NAND_ECC_HAMMING ; 
 char** nand_ecc_algos ; 
 int FUNC1 (struct device_node*,char*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	const char *pm;
	int err, i;

	err = FUNC1(np, "nand-ecc-algo", &pm);
	if (!err) {
		for (i = NAND_ECC_HAMMING; i < FUNC0(nand_ecc_algos); i++)
			if (!FUNC2(pm, nand_ecc_algos[i]))
				return i;
		return -ENODEV;
	}

	/*
	 * For backward compatibility we also read "nand-ecc-mode" checking
	 * for some obsoleted values that were specifying ECC algorithm.
	 */
	err = FUNC1(np, "nand-ecc-mode", &pm);
	if (err < 0)
		return err;

	if (!FUNC2(pm, "soft"))
		return NAND_ECC_HAMMING;
	else if (!FUNC2(pm, "soft_bch"))
		return NAND_ECC_BCH;

	return -ENODEV;
}