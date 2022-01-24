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
typedef  int /*<<< orphan*/  u32 ;
struct qcom_coincell {TYPE_1__* dev; int /*<<< orphan*/  base_addr; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 
 int FUNC3 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qcom_coincell*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct device_node *node = pdev->dev.of_node;
	struct qcom_coincell chgr;
	u32 rset = 0;
	u32 vset = 0;
	bool enable;
	int rc;

	chgr.dev = &pdev->dev;

	chgr.regmap = FUNC1(pdev->dev.parent, NULL);
	if (!chgr.regmap) {
		FUNC0(chgr.dev, "Unable to get regmap\n");
		return -EINVAL;
	}

	rc = FUNC3(node, "reg", &chgr.base_addr);
	if (rc)
		return rc;

	enable = !FUNC2(node, "qcom,charger-disable");

	if (enable) {
		rc = FUNC3(node, "qcom,rset-ohms", &rset);
		if (rc) {
			FUNC0(chgr.dev,
				"can't find 'qcom,rset-ohms' in DT block");
			return rc;
		}

		rc = FUNC3(node, "qcom,vset-millivolts", &vset);
		if (rc) {
			FUNC0(chgr.dev,
			    "can't find 'qcom,vset-millivolts' in DT block");
			return rc;
		}
	}

	return FUNC4(&chgr, rset, vset, enable);
}