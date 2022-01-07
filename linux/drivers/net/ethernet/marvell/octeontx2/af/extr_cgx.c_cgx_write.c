
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct cgx {int reg_base; } ;


 int writeq (int,int) ;

__attribute__((used)) static void cgx_write(struct cgx *cgx, u64 lmac, u64 offset, u64 val)
{
 writeq(val, cgx->reg_base + (lmac << 18) + offset);
}
