
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ks8851_net {int dummy; } ;
typedef scalar_t__ __le16 ;


 int MK_OP (int,unsigned int) ;
 int ks8851_rdreg (struct ks8851_net*,int ,int *,int) ;
 int le16_to_cpu (scalar_t__) ;

__attribute__((used)) static unsigned ks8851_rdreg16(struct ks8851_net *ks, unsigned reg)
{
 __le16 rx = 0;

 ks8851_rdreg(ks, MK_OP(reg & 2 ? 0xC : 0x3, reg), (u8 *)&rx, 2);
 return le16_to_cpu(rx);
}
