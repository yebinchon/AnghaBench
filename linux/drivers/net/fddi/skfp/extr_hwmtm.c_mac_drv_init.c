
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union s_fp_descr {int dummy; } s_fp_descr ;
typedef int u_int ;
struct s_smt_fp_txd {int dummy; } ;
struct s_smt_fp_rxd {int dummy; } ;
struct TYPE_4__ {int * mb_start; int * mb; } ;
struct TYPE_5__ {TYPE_1__ mbuf_pool; union s_fp_descr volatile* descr_p; } ;
struct TYPE_6__ {TYPE_2__ hwm; } ;
struct s_smc {TYPE_3__ os; } ;
typedef int SMbuf ;


 int HWM_E0001 ;
 int HWM_E0001_MSG ;
 int HWM_E0002 ;
 int HWM_E0002_MSG ;
 int MAX_MBUF ;
 scalar_t__ RXD_TXD_COUNT ;
 int SMT_PANIC (struct s_smc*,int ,int ) ;
 scalar_t__ mac_drv_get_desc_mem (struct s_smc*,int) ;
 scalar_t__ mac_drv_get_space (struct s_smc*,int) ;
 int * mb_start ;

int mac_drv_init(struct s_smc *smc)
{
 if (sizeof(struct s_smt_fp_rxd) % 16) {
  SMT_PANIC(smc,HWM_E0001,HWM_E0001_MSG) ;
 }
 if (sizeof(struct s_smt_fp_txd) % 16) {
  SMT_PANIC(smc,HWM_E0002,HWM_E0002_MSG) ;
 }




 if (!(smc->os.hwm.descr_p = (union s_fp_descr volatile *)
  mac_drv_get_desc_mem(smc,(u_int)
  (RXD_TXD_COUNT+1)*sizeof(struct s_smt_fp_txd)))) {
  return 1;
 }





 smc->os.hwm.mbuf_pool.mb_start=(SMbuf *)(&smc->os.hwm.mbuf_pool.mb[0]) ;
 return 0;
}
