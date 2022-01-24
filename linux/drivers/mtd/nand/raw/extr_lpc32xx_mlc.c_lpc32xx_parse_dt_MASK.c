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
struct lpc32xx_nand_cfg_mlc {int /*<<< orphan*/  wp_gpio; int /*<<< orphan*/  wr_low; int /*<<< orphan*/  wr_high; int /*<<< orphan*/  rd_low; int /*<<< orphan*/  rd_high; int /*<<< orphan*/  nand_ta; int /*<<< orphan*/  busy_delay; int /*<<< orphan*/  tcea_delay; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct lpc32xx_nand_cfg_mlc* FUNC1 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lpc32xx_nand_cfg_mlc *FUNC4(struct device *dev)
{
	struct lpc32xx_nand_cfg_mlc *ncfg;
	struct device_node *np = dev->of_node;

	ncfg = FUNC1(dev, sizeof(*ncfg), GFP_KERNEL);
	if (!ncfg)
		return NULL;

	FUNC3(np, "nxp,tcea-delay", &ncfg->tcea_delay);
	FUNC3(np, "nxp,busy-delay", &ncfg->busy_delay);
	FUNC3(np, "nxp,nand-ta", &ncfg->nand_ta);
	FUNC3(np, "nxp,rd-high", &ncfg->rd_high);
	FUNC3(np, "nxp,rd-low", &ncfg->rd_low);
	FUNC3(np, "nxp,wr-high", &ncfg->wr_high);
	FUNC3(np, "nxp,wr-low", &ncfg->wr_low);

	if (!ncfg->tcea_delay || !ncfg->busy_delay || !ncfg->nand_ta ||
	    !ncfg->rd_high || !ncfg->rd_low || !ncfg->wr_high ||
	    !ncfg->wr_low) {
		FUNC0(dev, "chip parameters not specified correctly\n");
		return NULL;
	}

	ncfg->wp_gpio = FUNC2(np, "gpios", 0);

	return ncfg;
}