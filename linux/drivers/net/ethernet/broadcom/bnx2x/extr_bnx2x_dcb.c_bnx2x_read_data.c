
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int REG_RD (struct bnx2x*,int) ;

__attribute__((used)) static void bnx2x_read_data(struct bnx2x *bp, u32 *buff,
       u32 addr, u32 len)
{
 int i;
 for (i = 0; i < len; i += 4, buff++)
  *buff = REG_RD(bp, addr + i);
}
