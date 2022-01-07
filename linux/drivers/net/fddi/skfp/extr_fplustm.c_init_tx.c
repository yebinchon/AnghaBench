
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct s_smt_tx_queue {void* tx_bmu_dsc; void* tx_bmu_ctl; } ;
struct TYPE_5__ {struct s_smt_tx_queue* tx_q; struct s_smt_tx_queue** tx; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct TYPE_4__ {int sync_bw; } ;
struct s_smc {TYPE_3__ hw; TYPE_1__ ess; } ;
typedef void* HW_PTR ;


 scalar_t__ ADDR (int ) ;
 int B0_XA_CSR ;
 int B0_XS_CSR ;
 int B5_XA_DA ;
 int B5_XS_DA ;
 size_t QUEUE_A0 ;
 size_t QUEUE_S ;
 int llc_recover_tx (struct s_smc*) ;
 int set_formac_tsync (struct s_smc*,int ) ;

__attribute__((used)) static void init_tx(struct s_smc *smc)
{
 struct s_smt_tx_queue *queue ;




 smc->hw.fp.tx[QUEUE_S] = queue = &smc->hw.fp.tx_q[QUEUE_S] ;
 queue->tx_bmu_ctl = (HW_PTR) ADDR(B0_XS_CSR) ;
 queue->tx_bmu_dsc = (HW_PTR) ADDR(B5_XS_DA) ;
 smc->hw.fp.tx[QUEUE_A0] = queue = &smc->hw.fp.tx_q[QUEUE_A0] ;
 queue->tx_bmu_ctl = (HW_PTR) ADDR(B0_XA_CSR) ;
 queue->tx_bmu_dsc = (HW_PTR) ADDR(B5_XA_DA) ;


 llc_recover_tx(smc) ;
}
