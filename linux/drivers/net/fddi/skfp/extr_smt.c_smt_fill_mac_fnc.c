
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smt_p_mac_fnc {int nc_counter; int nc_index; int nc_mib_index; } ;
struct TYPE_4__ {TYPE_1__* m; } ;
struct s_smc {TYPE_2__ mib; } ;
struct TYPE_3__ {int fddiMACNotCopied_Ct; } ;


 int INDEX_MAC ;
 size_t MAC0 ;
 int SMTSETPARA (struct smt_p_mac_fnc*,int ) ;
 int SMT_P_MAC_FNC ;
 int mac_index (struct s_smc*,int) ;

__attribute__((used)) static void smt_fill_mac_fnc(struct s_smc *smc, struct smt_p_mac_fnc *fnc)
{
 SMTSETPARA(fnc,SMT_P_MAC_FNC) ;
 fnc->nc_mib_index = INDEX_MAC ;
 fnc->nc_index = mac_index(smc,1) ;
 fnc->nc_counter = smc->mib.m[MAC0].fddiMACNotCopied_Ct ;
}
