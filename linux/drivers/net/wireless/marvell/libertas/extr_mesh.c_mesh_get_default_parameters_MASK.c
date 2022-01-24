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
struct mrvl_mesh_defaults {int dummy; } ;
struct lbs_private {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_GET ; 
 int /*<<< orphan*/  CMD_TYPE_MESH_GET_DEFAULTS ; 
 int EOPNOTSUPP ; 
 int FUNC0 (struct lbs_private*,struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mrvl_mesh_defaults*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC3 (struct device*) ; 

__attribute__((used)) static int FUNC4(struct device *dev,
				       struct mrvl_mesh_defaults *defs)
{
	struct lbs_private *priv = FUNC3(dev)->ml_priv;
	struct cmd_ds_mesh_config cmd;
	int ret;

	FUNC2(&cmd, 0, sizeof(struct cmd_ds_mesh_config));
	ret = FUNC0(priv, &cmd, CMD_ACT_MESH_CONFIG_GET,
				   CMD_TYPE_MESH_GET_DEFAULTS);

	if (ret)
		return -EOPNOTSUPP;

	FUNC1(defs, &cmd.data[0], sizeof(struct mrvl_mesh_defaults));

	return 0;
}