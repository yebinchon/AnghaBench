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
struct iwl_priv {TYPE_1__* fw; } ;
struct iwl_op_mode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  fw_version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwl_priv*,char*,int /*<<< orphan*/ ) ; 
 struct iwl_priv* FUNC1 (struct iwl_op_mode*) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_priv*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_priv*,int) ; 

__attribute__((used)) static void FUNC5(struct iwl_op_mode *op_mode)
{
	struct iwl_priv *priv = FUNC1(op_mode);

	FUNC0(priv, "Loaded firmware version: %s\n",
		priv->fw->fw_version);

	FUNC2(priv);
	FUNC3(priv, false, NULL);

	FUNC4(priv, false);
}