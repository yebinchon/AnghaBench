
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int rc_ier; } ;


 int IRQ_LCI ;
 int IRQ_RXI ;
 int IRQ_TXI ;
 int KS_ISR ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;

__attribute__((used)) static void ks_setup_int(struct ks_net *ks)
{
 ks->rc_ier = 0x00;

 ks_wrreg16(ks, KS_ISR, 0xffff);


 ks->rc_ier = (IRQ_LCI | IRQ_TXI | IRQ_RXI);
}
