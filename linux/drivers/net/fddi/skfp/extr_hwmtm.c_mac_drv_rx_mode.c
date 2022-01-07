
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* pass_llc_promisc; void* pass_DB; void* pass_NSA; void* pass_SMT; } ;
struct TYPE_4__ {TYPE_1__ hwm; } ;
struct s_smc {TYPE_2__ os; } ;


 void* FALSE ;
 void* TRUE ;
 int mac_set_rx_mode (struct s_smc*,int) ;

void mac_drv_rx_mode(struct s_smc *smc, int mode)
{
 switch(mode) {
 case 129:
  smc->os.hwm.pass_SMT = TRUE ;
  break ;
 case 136:
  smc->os.hwm.pass_SMT = FALSE ;
  break ;
 case 130:
  smc->os.hwm.pass_NSA = TRUE ;
  break ;
 case 137:
  smc->os.hwm.pass_NSA = FALSE ;
  break ;
 case 131:
  smc->os.hwm.pass_DB = TRUE ;
  break ;
 case 138:
  smc->os.hwm.pass_DB = FALSE ;
  break ;
 case 139:
  smc->os.hwm.pass_SMT = smc->os.hwm.pass_NSA = FALSE ;
  smc->os.hwm.pass_DB = FALSE ;
  smc->os.hwm.pass_llc_promisc = TRUE ;
  mac_set_rx_mode(smc,140) ;
  break ;
 case 141:
  smc->os.hwm.pass_llc_promisc = FALSE ;
  break ;
 case 133:
  smc->os.hwm.pass_llc_promisc = TRUE ;
  break ;
 case 134:
 case 142:
 case 128:
 case 135:
 case 132:
 case 140:
 default:
  mac_set_rx_mode(smc,mode) ;
  break ;
 }
}
