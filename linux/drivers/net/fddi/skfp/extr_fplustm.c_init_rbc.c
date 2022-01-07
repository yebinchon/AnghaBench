
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct TYPE_4__ {scalar_t__ rx2_fifo_start; } ;
struct TYPE_5__ {TYPE_1__ fifo; } ;
struct TYPE_6__ {TYPE_2__ fp; } ;
struct s_smc {TYPE_3__ hw; } ;


 int FM_A (int ) ;
 int FM_EAA1 ;
 int FM_RPXA1 ;
 int FM_SWPXA1 ;
 int FM_WPXA1 ;
 int outpw (int ,scalar_t__) ;
 int set_recvptr (struct s_smc*) ;
 int set_txptr (struct s_smc*) ;

__attribute__((used)) static void init_rbc(struct s_smc *smc)
{
 u_short rbc_ram_addr ;




 rbc_ram_addr = smc->hw.fp.fifo.rx2_fifo_start - 1 ;

 outpw(FM_A(FM_RPXA1),rbc_ram_addr) ;
 outpw(FM_A(FM_WPXA1),rbc_ram_addr) ;
 outpw(FM_A(FM_SWPXA1),rbc_ram_addr) ;
 outpw(FM_A(FM_EAA1),rbc_ram_addr) ;

 set_recvptr(smc) ;
 set_txptr(smc) ;
}
