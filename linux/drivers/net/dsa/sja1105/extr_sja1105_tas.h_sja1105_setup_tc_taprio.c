
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_taprio_qopt_offload {int dummy; } ;
struct dsa_switch {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int sja1105_setup_tc_taprio(struct dsa_switch *ds, int port,
       struct tc_taprio_qopt_offload *admin)
{
 return -EOPNOTSUPP;
}
