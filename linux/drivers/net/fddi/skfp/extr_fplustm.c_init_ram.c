
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct TYPE_4__ {scalar_t__ rbc_ram_start; int rbc_ram_end; } ;
struct TYPE_6__ {TYPE_1__ fifo; } ;
struct TYPE_5__ {TYPE_3__ fp; } ;
struct s_smc {TYPE_2__ hw; } ;


 int CHECK_NPP () ;
 int MARW (int) ;
 int RBC_MEM_SIZE ;
 int write_mdr (struct s_smc*,long) ;

__attribute__((used)) static void init_ram(struct s_smc *smc)
{
 u_short i ;

 smc->hw.fp.fifo.rbc_ram_start = 0 ;
 smc->hw.fp.fifo.rbc_ram_end =
  smc->hw.fp.fifo.rbc_ram_start + RBC_MEM_SIZE ;
 CHECK_NPP() ;
 MARW(smc->hw.fp.fifo.rbc_ram_start) ;
 for (i = smc->hw.fp.fifo.rbc_ram_start;
  i < (u_short) (smc->hw.fp.fifo.rbc_ram_end-1); i++)
  write_mdr(smc,0L) ;

 write_mdr(smc,0L) ;
}
