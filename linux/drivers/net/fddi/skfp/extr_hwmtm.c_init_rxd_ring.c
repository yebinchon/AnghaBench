
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union s_fp_descr {int dummy; } s_fp_descr ;
typedef int u_long ;
struct s_smt_rx_queue {scalar_t__ rx_used; int rx_free; struct s_smt_fp_rxd volatile* rx_curr_get; struct s_smt_fp_rxd volatile* rx_curr_put; } ;
struct s_smt_fp_rxd {int rxd_nrdadr; } ;
struct TYPE_5__ {struct s_smt_rx_queue** rx; } ;
struct TYPE_6__ {TYPE_1__ fp; } ;
struct TYPE_8__ {scalar_t__ descr_p; } ;
struct TYPE_7__ {TYPE_4__ hwm; } ;
struct s_smc {TYPE_2__ hw; TYPE_3__ os; } ;


 int ADDR (int ) ;
 int B4_R1_DA ;
 int DB_GEN (int,char*,int ) ;
 size_t QUEUE_R1 ;
 int SMT_R1_RXD_COUNT ;
 int init_descr_ring (struct s_smc*,union s_fp_descr volatile*,int ) ;
 int le32_to_cpu (int ) ;
 int outpd (int ,int ) ;

__attribute__((used)) static void init_rxd_ring(struct s_smc *smc)
{
 struct s_smt_fp_rxd volatile *ds ;
 struct s_smt_rx_queue *queue ;
 u_long phys ;




 ds = (struct s_smt_fp_rxd volatile *) smc->os.hwm.descr_p ;
 queue = smc->hw.fp.rx[QUEUE_R1] ;
 DB_GEN(3, "Init RxD ring, %d RxDs", SMT_R1_RXD_COUNT);
 (void)init_descr_ring(smc,(union s_fp_descr volatile *)ds,
  SMT_R1_RXD_COUNT) ;
 phys = le32_to_cpu(ds->rxd_nrdadr) ;
 ds++ ;
 queue->rx_curr_put = queue->rx_curr_get = ds ;
 queue->rx_free = SMT_R1_RXD_COUNT ;
 queue->rx_used = 0 ;
 outpd(ADDR(B4_R1_DA),phys) ;
}
