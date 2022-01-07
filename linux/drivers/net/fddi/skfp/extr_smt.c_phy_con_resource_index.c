
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fddiSMTCF_State; } ;
struct s_smc {TYPE_1__ mib; } ;


 int ENTITY_PHY (int) ;
 int PA ;





 int cem_get_downstream (struct s_smc*,int ) ;
 int entity_to_index (struct s_smc*,int ) ;

__attribute__((used)) static int phy_con_resource_index(struct s_smc *smc, int phy)
{



 switch (smc->mib.fddiSMTCF_State) {
 case 128 :
  return phy == PA ? 3 : 2;
 case 132 :
  return phy == PA ? 1 : 3;
 case 130 :
  return phy == PA ? 3 : 1;
 case 129 :
  return phy == PA ? 2 : 3;
 case 131 :
  return 2;
 }
 return phy;

}
