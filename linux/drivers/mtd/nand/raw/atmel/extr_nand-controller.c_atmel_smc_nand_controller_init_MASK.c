#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct of_device_id {scalar_t__ data; } ;
struct device_node {int dummy; } ;
struct device {TYPE_3__* parent; } ;
struct atmel_smc_nand_ebi_csa_cfg {int offs; } ;
struct TYPE_5__ {TYPE_1__* caps; struct device* dev; } ;
struct atmel_smc_nand_controller {struct atmel_smc_nand_ebi_csa_cfg* ebi_csa; int /*<<< orphan*/  ebi_csa_regmap; TYPE_2__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  of_node; } ;
struct TYPE_4__ {int /*<<< orphan*/  ebi_csa_regmap_name; scalar_t__ legacy_of_bindings; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  atmel_ebi_csa_regmap_of_ids ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct device_node*) ; 

__attribute__((used)) static int
FUNC8(struct atmel_smc_nand_controller *nc)
{
	struct device *dev = nc->base.dev;
	const struct of_device_id *match;
	struct device_node *np;
	int ret;

	/* We do not retrieve the EBICSA regmap when parsing old DTs. */
	if (nc->base.caps->legacy_of_bindings)
		return 0;

	np = FUNC6(dev->parent->of_node,
			      nc->base.caps->ebi_csa_regmap_name, 0);
	if (!np)
		return 0;

	match = FUNC4(atmel_ebi_csa_regmap_of_ids, np);
	if (!match) {
		FUNC5(np);
		return 0;
	}

	nc->ebi_csa_regmap = FUNC7(np);
	FUNC5(np);
	if (FUNC0(nc->ebi_csa_regmap)) {
		ret = FUNC1(nc->ebi_csa_regmap);
		FUNC2(dev, "Could not get EBICSA regmap (err = %d)\n", ret);
		return ret;
	}

	nc->ebi_csa = (struct atmel_smc_nand_ebi_csa_cfg *)match->data;

	/*
	 * The at91sam9263 has 2 EBIs, if the NAND controller is under EBI1
	 * add 4 to ->ebi_csa->offs.
	 */
	if (FUNC3(dev->parent->of_node,
				    "atmel,at91sam9263-ebi1"))
		nc->ebi_csa->offs += 4;

	return 0;
}