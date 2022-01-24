#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  ct_kill_threshold; } ;
struct il_priv {TYPE_1__ hw_params; int /*<<< orphan*/  lock; } ;
struct il_ct_kill_config {int /*<<< orphan*/  critical_temperature_R; } ;
typedef  int /*<<< orphan*/  cmd ;

/* Variables and functions */
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_CLR ; 
 int /*<<< orphan*/  CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT ; 
 int /*<<< orphan*/  C_CT_KILL_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct il_priv*,int /*<<< orphan*/ ,int,struct il_ct_kill_config*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct il_priv *il)
{
	struct il_ct_kill_config cmd;
	unsigned long flags;
	int ret = 0;

	FUNC5(&il->lock, flags);
	FUNC2(il, CSR_UCODE_DRV_GP1_CLR,
	       CSR_UCODE_DRV_GP1_REG_BIT_CT_KILL_EXIT);
	FUNC6(&il->lock, flags);

	cmd.critical_temperature_R =
	    FUNC3(il->hw_params.ct_kill_threshold);

	ret = FUNC4(il, C_CT_KILL_CONFIG, sizeof(cmd), &cmd);
	if (ret)
		FUNC1("C_CT_KILL_CONFIG failed\n");
	else
		FUNC0("C_CT_KILL_CONFIG " "succeeded, "
		       "critical temperature is %d\n",
		       il->hw_params.ct_kill_threshold);
}