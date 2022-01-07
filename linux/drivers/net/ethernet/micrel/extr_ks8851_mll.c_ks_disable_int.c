
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_net {int dummy; } ;


 int KS_IER ;
 int ks_wrreg16 (struct ks_net*,int ,int) ;

__attribute__((used)) static void ks_disable_int(struct ks_net *ks)
{
 ks_wrreg16(ks, KS_IER, 0x0000);
}
