
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_rfs_rule {int dummy; } ;
struct mvpp2_port {int dummy; } ;


 int mvpp2_port_c2_tcam_rule_add (struct mvpp2_port*,struct mvpp2_rfs_rule*) ;

__attribute__((used)) static int mvpp2_port_c2_rfs_rule_insert(struct mvpp2_port *port,
      struct mvpp2_rfs_rule *rule)
{
 return mvpp2_port_c2_tcam_rule_add(port, rule);
}
