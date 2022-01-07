
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smt_p_version {int v_n; int v_index; scalar_t__ v_pad2; int * v_version; scalar_t__ v_pad; } ;
struct s_smc {int dummy; } ;


 int SK_UNUSED (struct s_smc*) ;
 int SMTSETPARA (struct smt_p_version*,int ) ;
 int SMT_P_VERSION ;
 int SMT_VID_2 ;

__attribute__((used)) static void smt_fill_version(struct s_smc *smc, struct smt_p_version *vers)
{
 SK_UNUSED(smc) ;
 SMTSETPARA(vers,SMT_P_VERSION) ;
 vers->v_pad = 0 ;
 vers->v_n = 1 ;
 vers->v_index = 1 ;
 vers->v_version[0] = SMT_VID_2 ;
 vers->v_pad2 = 0 ;
}
