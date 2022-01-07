
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s_smc {int dummy; } ;


 int FM_A (int ) ;
 int FM_MDREG1 ;
 int FM_SELRA ;
 int SETMASK (int ,int ,int ) ;
 int plc_config_mux (struct s_smc*,int) ;

void config_mux(struct s_smc *smc, int mux)
{
 plc_config_mux(smc,mux) ;

 SETMASK(FM_A(FM_MDREG1),FM_SELRA,FM_SELRA) ;
}
