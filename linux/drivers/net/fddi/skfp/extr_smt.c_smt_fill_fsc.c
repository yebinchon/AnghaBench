
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_p_fsc {void* fsc_value; void* fsc_mac_index; scalar_t__ fsc_pad1; scalar_t__ fsc_pad0; } ;
struct s_smc {int dummy; } ;


 void* FSC_TYPE0 ;
 void* INDEX_MAC ;
 int SK_UNUSED (struct s_smc*) ;
 int SMTSETPARA (struct smt_p_fsc*,int ) ;
 int SMT_P_FSC ;
 void* smt_swap_short (void*) ;

__attribute__((used)) static void smt_fill_fsc(struct s_smc *smc, struct smt_p_fsc *fsc)
{
 SK_UNUSED(smc) ;
 SMTSETPARA(fsc,SMT_P_FSC) ;
 fsc->fsc_pad0 = 0 ;
 fsc->fsc_mac_index = INDEX_MAC ;


 fsc->fsc_pad1 = 0 ;
 fsc->fsc_value = FSC_TYPE0 ;




}
