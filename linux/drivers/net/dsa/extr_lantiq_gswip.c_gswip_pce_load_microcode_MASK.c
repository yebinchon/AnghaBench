#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gswip_priv {int dummy; } ;
struct TYPE_3__ {int val_0; int val_1; int val_2; int val_3; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  GSWIP_PCE_GCTRL_0 ; 
 int /*<<< orphan*/  GSWIP_PCE_GCTRL_0_MC_VALID ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_ADDR ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_CTRL ; 
 int GSWIP_PCE_TBL_CTRL_ADDR_MASK ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_CTRL_BAS ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_CTRL_OPMOD_ADWR ; 
 int GSWIP_PCE_TBL_CTRL_OPMOD_MASK ; 
 int /*<<< orphan*/  GSWIP_PCE_TBL_MASK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* gswip_pce_microcode ; 
 int /*<<< orphan*/  FUNC2 (struct gswip_priv*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct gswip_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gswip_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gswip_priv *priv)
{
	int i;
	int err;

	FUNC2(priv, GSWIP_PCE_TBL_CTRL_ADDR_MASK |
				GSWIP_PCE_TBL_CTRL_OPMOD_MASK,
			  GSWIP_PCE_TBL_CTRL_OPMOD_ADWR, GSWIP_PCE_TBL_CTRL);
	FUNC4(priv, 0, GSWIP_PCE_TBL_MASK);

	for (i = 0; i < FUNC0(gswip_pce_microcode); i++) {
		FUNC4(priv, i, GSWIP_PCE_TBL_ADDR);
		FUNC4(priv, gswip_pce_microcode[i].val_0,
			       FUNC1(0));
		FUNC4(priv, gswip_pce_microcode[i].val_1,
			       FUNC1(1));
		FUNC4(priv, gswip_pce_microcode[i].val_2,
			       FUNC1(2));
		FUNC4(priv, gswip_pce_microcode[i].val_3,
			       FUNC1(3));

		/* start the table access: */
		FUNC2(priv, 0, GSWIP_PCE_TBL_CTRL_BAS,
				  GSWIP_PCE_TBL_CTRL);
		err = FUNC3(priv, GSWIP_PCE_TBL_CTRL,
					     GSWIP_PCE_TBL_CTRL_BAS);
		if (err)
			return err;
	}

	/* tell the switch that the microcode is loaded */
	FUNC2(priv, 0, GSWIP_PCE_GCTRL_0_MC_VALID,
			  GSWIP_PCE_GCTRL_0);

	return 0;
}