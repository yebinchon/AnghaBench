#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_3__ {int active_protocol_id; } ;
struct mrvl_meshie {TYPE_1__ val; } ;
struct mrvl_mesh_defaults {int /*<<< orphan*/  meshie; } ;
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_config {int /*<<< orphan*/ * data; int /*<<< orphan*/  length; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  cmd ;
struct TYPE_4__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_CONFIG_SET ; 
 int /*<<< orphan*/  CMD_TYPE_MESH_SET_MESH_IE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct lbs_private*,struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mrvl_meshie*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_ds_mesh_config*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct device*,struct mrvl_mesh_defaults*) ; 
 int FUNC5 (char const*,char*,int*) ; 
 int FUNC6 (char const*) ; 
 TYPE_2__* FUNC7 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct cmd_ds_mesh_config cmd;
	struct mrvl_mesh_defaults defs;
	struct mrvl_meshie *ie;
	struct lbs_private *priv = FUNC7(dev)->ml_priv;
	uint32_t datum;
	int ret;

	FUNC3(&cmd, 0, sizeof(cmd));
	ret = FUNC5(buf, "%d", &datum);
	if ((ret != 1) || (datum > 255))
		return -EINVAL;

	/* fetch all other Information Element parameters */
	ret = FUNC4(dev, &defs);

	cmd.length = FUNC0(sizeof(struct mrvl_meshie));

	/* transfer IE elements */
	ie = (struct mrvl_meshie *) &cmd.data[0];
	FUNC2(ie, &defs.meshie, sizeof(struct mrvl_meshie));
	/* update protocol id */
	ie->val.active_protocol_id = datum;

	ret = FUNC1(priv, &cmd, CMD_ACT_MESH_CONFIG_SET,
				   CMD_TYPE_MESH_SET_MESH_IE);
	if (ret)
		return ret;

	return FUNC6(buf);
}