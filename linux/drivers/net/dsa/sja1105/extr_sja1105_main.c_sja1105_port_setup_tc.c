
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;
typedef enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;


 int EOPNOTSUPP ;

 int sja1105_setup_tc_taprio (struct dsa_switch*,int,void*) ;

__attribute__((used)) static int sja1105_port_setup_tc(struct dsa_switch *ds, int port,
     enum tc_setup_type type,
     void *type_data)
{
 switch (type) {
 case 128:
  return sja1105_setup_tc_taprio(ds, port, type_data);
 default:
  return -EOPNOTSUPP;
 }
}
