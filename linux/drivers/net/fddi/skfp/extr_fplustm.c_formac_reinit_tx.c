
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* a; } ;
struct TYPE_6__ {int tx_s_size; } ;
struct TYPE_7__ {TYPE_1__ fifo; } ;
struct TYPE_8__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_5__ mib; TYPE_3__ hw; } ;
struct TYPE_9__ {scalar_t__ fddiPATHSbaPayload; } ;


 size_t PATH0 ;
 int init_mac (struct s_smc*,int ) ;

void formac_reinit_tx(struct s_smc *smc)
{





 if (!smc->hw.fp.fifo.tx_s_size && smc->mib.a[PATH0].fddiPATHSbaPayload){
  (void)init_mac(smc,0) ;
 }
}
