
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int ) ;

__attribute__((used)) static u32 bnx2x_bits_dis(struct bnx2x *bp, u32 reg, u32 bits)
{
 u32 val = REG_RD(bp, reg);

 val &= ~bits;
 REG_WR(bp, reg, val);
 return val;
}
