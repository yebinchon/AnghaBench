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
typedef  int /*<<< orphan*/  u32 ;
struct ehea_adapter {TYPE_3__** port; TYPE_2__* ofdev; } ;
struct device_node {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  netdev; } ;
struct TYPE_4__ {struct device_node* of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (struct ehea_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct ehea_adapter*) ; 
 TYPE_3__* FUNC2 (struct ehea_adapter*,int /*<<< orphan*/  const,struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const) ; 
 struct device_node* FUNC4 (struct device_node*,struct device_node*) ; 
 int /*<<< orphan*/ * FUNC5 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct ehea_adapter *adapter)
{
	struct device_node *lhea_dn;
	struct device_node *eth_dn = NULL;

	const u32 *dn_log_port_id;
	int i = 0;

	lhea_dn = adapter->ofdev->dev.of_node;
	while ((eth_dn = FUNC4(lhea_dn, eth_dn))) {

		dn_log_port_id = FUNC5(eth_dn, "ibm,hea-port-no",
						 NULL);
		if (!dn_log_port_id) {
			FUNC7("bad device node: eth_dn name=%pOF\n", eth_dn);
			continue;
		}

		if (FUNC0(adapter)) {
			FUNC7("creating MR failed\n");
			FUNC6(eth_dn);
			return -EIO;
		}

		adapter->port[i] = FUNC2(adapter,
							  *dn_log_port_id,
							  eth_dn);
		if (adapter->port[i])
			FUNC3(adapter->port[i]->netdev,
				    "logical port id #%d\n", *dn_log_port_id);
		else
			FUNC1(adapter);

		i++;
	}
	return 0;
}