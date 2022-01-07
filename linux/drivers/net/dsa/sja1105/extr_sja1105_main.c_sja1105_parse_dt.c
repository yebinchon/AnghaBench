
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sja1105_private {TYPE_1__* spidev; } ;
struct sja1105_dt_port {int dummy; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int ENODEV ;
 int dev_err (struct device*,char*) ;
 struct device_node* of_get_child_by_name (struct device_node*,char*) ;
 int of_node_put (struct device_node*) ;
 int sja1105_parse_ports_node (struct sja1105_private*,struct sja1105_dt_port*,struct device_node*) ;

__attribute__((used)) static int sja1105_parse_dt(struct sja1105_private *priv,
       struct sja1105_dt_port *ports)
{
 struct device *dev = &priv->spidev->dev;
 struct device_node *switch_node = dev->of_node;
 struct device_node *ports_node;
 int rc;

 ports_node = of_get_child_by_name(switch_node, "ports");
 if (!ports_node) {
  dev_err(dev, "Incorrect bindings: absent \"ports\" node\n");
  return -ENODEV;
 }

 rc = sja1105_parse_ports_node(priv, ports, ports_node);
 of_node_put(ports_node);

 return rc;
}
