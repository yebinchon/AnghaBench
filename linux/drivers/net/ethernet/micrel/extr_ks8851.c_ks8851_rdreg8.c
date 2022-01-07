
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks8851_net {int dummy; } ;


 int MK_OP (int,unsigned int) ;
 int ks8851_rdreg (struct ks8851_net*,int ,int*,int) ;

__attribute__((used)) static unsigned ks8851_rdreg8(struct ks8851_net *ks, unsigned reg)
{
 u8 rxb[1];

 ks8851_rdreg(ks, MK_OP(1 << (reg & 3), reg), rxb, 1);
 return rxb[0];
}
