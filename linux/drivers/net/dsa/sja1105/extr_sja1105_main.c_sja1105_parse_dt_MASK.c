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
struct sja1105_private {TYPE_1__* spidev; } ;
struct sja1105_dt_port {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 struct device_node* FUNC1 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int FUNC3 (struct sja1105_private*,struct sja1105_dt_port*,struct device_node*) ; 

__attribute__((used)) static int FUNC4(struct sja1105_private *priv,
			    struct sja1105_dt_port *ports)
{
	struct device *dev = &priv->spidev->dev;
	struct device_node *switch_node = dev->of_node;
	struct device_node *ports_node;
	int rc;

	ports_node = FUNC1(switch_node, "ports");
	if (!ports_node) {
		FUNC0(dev, "Incorrect bindings: absent \"ports\" node\n");
		return -ENODEV;
	}

	rc = FUNC3(priv, ports, ports_node);
	FUNC2(ports_node);

	return rc;
}