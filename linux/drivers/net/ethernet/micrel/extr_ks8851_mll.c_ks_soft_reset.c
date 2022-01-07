
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int dummy; } ;


 int KS_GRR ;
 int KS_IER ;
 int ks_wrreg16 (struct ks_net*,int ,unsigned int) ;
 int mdelay (int) ;

__attribute__((used)) static void ks_soft_reset(struct ks_net *ks, unsigned op)
{

 ks_wrreg16(ks, KS_IER, 0x0000);
 ks_wrreg16(ks, KS_GRR, op);
 mdelay(10);
 ks_wrreg16(ks, KS_GRR, 0);
 mdelay(1);
}
