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
struct nand_data_interface {int dummy; } ;
struct atmel_smc_cs_conf {int /*<<< orphan*/  timings; } ;
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  id; } ;
struct atmel_nand_cs {struct atmel_smc_cs_conf smcconf; int /*<<< orphan*/  id; TYPE_2__ rb; } ;
struct TYPE_4__ {int /*<<< orphan*/  controller; } ;
struct atmel_nand {struct atmel_nand_cs* cs; TYPE_1__ base; } ;
struct TYPE_6__ {int /*<<< orphan*/  smc; } ;
struct atmel_hsmc_nand_controller {int /*<<< orphan*/  hsmc_layout; TYPE_3__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ATMEL_NAND_NATIVE_RB ; 
 int NAND_DATA_IFACE_CHECK_ONLY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct atmel_smc_cs_conf*) ; 
 int FUNC2 (struct atmel_nand*,struct nand_data_interface const*,struct atmel_smc_cs_conf*) ; 
 struct atmel_hsmc_nand_controller* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct atmel_nand *nand,
					int csline,
					const struct nand_data_interface *conf)
{
	struct atmel_hsmc_nand_controller *nc;
	struct atmel_smc_cs_conf smcconf;
	struct atmel_nand_cs *cs;
	int ret;

	nc = FUNC3(nand->base.controller);

	ret = FUNC2(nand, conf, &smcconf);
	if (ret)
		return ret;

	if (csline == NAND_DATA_IFACE_CHECK_ONLY)
		return 0;

	cs = &nand->cs[csline];
	cs->smcconf = smcconf;

	if (cs->rb.type == ATMEL_NAND_NATIVE_RB)
		cs->smcconf.timings |= FUNC0(cs->rb.id);

	FUNC1(nc->base.smc, nc->hsmc_layout, cs->id,
				 &cs->smcconf);

	return 0;
}