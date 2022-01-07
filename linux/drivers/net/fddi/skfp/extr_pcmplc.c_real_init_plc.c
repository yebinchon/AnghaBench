
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int NUMPHYS ;
 int plc_init (struct s_smc*,int) ;

__attribute__((used)) static void real_init_plc(struct s_smc *smc)
{
 int p ;

 for (p = 0 ; p < NUMPHYS ; p++)
  plc_init(smc,p) ;
}
