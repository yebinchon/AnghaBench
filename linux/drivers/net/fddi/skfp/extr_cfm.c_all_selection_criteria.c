
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {struct s_phy* y; } ;
struct s_phy {int dummy; } ;


 int NUMPHYS ;
 int selection_criteria (struct s_smc*,struct s_phy*) ;

void all_selection_criteria(struct s_smc *smc)
{
 struct s_phy *phy ;
 int p ;

 for ( p = 0,phy = smc->y ; p < NUMPHYS; p++, phy++ ) {

  selection_criteria (smc,phy);
 }
}
