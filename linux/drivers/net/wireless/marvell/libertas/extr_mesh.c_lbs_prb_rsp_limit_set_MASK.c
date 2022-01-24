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
struct lbs_private {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct cmd_ds_mesh_access {void** data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  mesh_access ;
struct TYPE_2__ {struct lbs_private* ml_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_ACT_MESH_SET_GET_PRB_RSP_LIMIT ; 
 unsigned long CMD_ACT_SET ; 
 int ENOTSUPP ; 
 void* FUNC0 (unsigned long) ; 
 int FUNC1 (char const*,int,unsigned long*) ; 
 int FUNC2 (struct lbs_private*,int /*<<< orphan*/ ,struct cmd_ds_mesh_access*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmd_ds_mesh_access*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char const*) ; 
 TYPE_1__* FUNC5 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC6(struct device *dev,
		struct device_attribute *attr, const char *buf, size_t count)
{
	struct lbs_private *priv = FUNC5(dev)->ml_priv;
	struct cmd_ds_mesh_access mesh_access;
	int ret;
	unsigned long retry_limit;

	FUNC3(&mesh_access, 0, sizeof(mesh_access));
	mesh_access.data[0] = FUNC0(CMD_ACT_SET);

	ret = FUNC1(buf, 10, &retry_limit);
	if (ret)
		return ret;
	if (retry_limit > 15)
		return -ENOTSUPP;

	mesh_access.data[1] = FUNC0(retry_limit);

	ret = FUNC2(priv, CMD_ACT_MESH_SET_GET_PRB_RSP_LIMIT,
			&mesh_access);
	if (ret)
		return ret;

	return FUNC4(buf);
}