
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks8851_net {int dummy; } ;


 int KS_GRR ;
 int ks8851_wrreg16 (struct ks8851_net*,int ,unsigned int) ;
 int mdelay (int) ;

__attribute__((used)) static void ks8851_soft_reset(struct ks8851_net *ks, unsigned op)
{
 ks8851_wrreg16(ks, KS_GRR, op);
 mdelay(1);
 ks8851_wrreg16(ks, KS_GRR, 0);
 mdelay(1);
}
