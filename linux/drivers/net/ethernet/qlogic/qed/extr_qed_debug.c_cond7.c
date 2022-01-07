
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 cond7(const u32 *r, const u32 *imm)
{
 return ((r[0] >> imm[0]) & imm[1]) != imm[2];
}
