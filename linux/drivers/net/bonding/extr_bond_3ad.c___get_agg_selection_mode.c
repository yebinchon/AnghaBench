
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct port {int dummy; } ;
struct TYPE_2__ {int ad_select; } ;
struct bonding {TYPE_1__ params; } ;


 int BOND_AD_STABLE ;
 struct bonding* __get_bond_by_port (struct port*) ;

__attribute__((used)) static inline u32 __get_agg_selection_mode(struct port *port)
{
 struct bonding *bond = __get_bond_by_port(port);

 if (bond == ((void*)0))
  return BOND_AD_STABLE;

 return bond->params.ad_select;
}
