
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2 {scalar_t__ hw_version; } ;
struct device_node {int dummy; } ;


 scalar_t__ MVPP21 ;
 int MVPP2_MAX_THREADS ;
 scalar_t__ mvpp22_port_has_legacy_tx_irqs (struct device_node*,unsigned long*) ;
 scalar_t__ of_property_match_string (struct device_node*,char*,char*) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static bool mvpp2_port_has_irqs(struct mvpp2 *priv,
    struct device_node *port_node,
    unsigned long *flags)
{
 char name[5];
 int i;


 if (!port_node)
  return 1;

 if (priv->hw_version == MVPP21)
  return 0;

 if (mvpp22_port_has_legacy_tx_irqs(port_node, flags))
  return 1;

 for (i = 0; i < MVPP2_MAX_THREADS; i++) {
  snprintf(name, 5, "hif%d", i);
  if (of_property_match_string(port_node, "interrupt-names",
          name) < 0)
   return 0;
 }

 return 1;
}
