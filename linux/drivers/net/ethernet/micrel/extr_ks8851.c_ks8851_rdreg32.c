
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks8851_net {int dummy; } ;
typedef scalar_t__ __le32 ;


 int MK_OP (int,unsigned int) ;
 int WARN_ON (unsigned int) ;
 int ks8851_rdreg (struct ks8851_net*,int ,int *,int) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static unsigned ks8851_rdreg32(struct ks8851_net *ks, unsigned reg)
{
 __le32 rx = 0;

 WARN_ON(reg & 3);

 ks8851_rdreg(ks, MK_OP(0xf, reg), (u8 *)&rx, 4);
 return le32_to_cpu(rx);
}
