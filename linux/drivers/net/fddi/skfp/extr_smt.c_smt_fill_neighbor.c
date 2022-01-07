
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smt_p_neighbor {int nb_dna; int nb_una; int nb_mac_index; int nb_mib_index; } ;
struct TYPE_3__ {TYPE_2__* m; } ;
struct s_smc {TYPE_1__ mib; } ;
struct TYPE_4__ {int fddiMACDownstreamNbr; int fddiMACUpstreamNbr; } ;


 int INDEX_MAC ;
 size_t MAC0 ;
 int SMTSETPARA (struct smt_p_neighbor*,int ) ;
 int SMT_P_NEIGHBORS ;
 int mac_index (struct s_smc*,int) ;

__attribute__((used)) static void smt_fill_neighbor(struct s_smc *smc, struct smt_p_neighbor *neighbor)
{
 SMTSETPARA(neighbor,SMT_P_NEIGHBORS) ;

 neighbor->nb_mib_index = INDEX_MAC ;
 neighbor->nb_mac_index = mac_index(smc,1) ;
 neighbor->nb_una = smc->mib.m[MAC0].fddiMACUpstreamNbr ;
 neighbor->nb_dna = smc->mib.m[MAC0].fddiMACDownstreamNbr ;
}
