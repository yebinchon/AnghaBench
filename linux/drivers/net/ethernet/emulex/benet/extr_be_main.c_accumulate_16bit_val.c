
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int WRITE_ONCE (int,int) ;
 scalar_t__ hi (int) ;
 scalar_t__ lo (int) ;

__attribute__((used)) static void accumulate_16bit_val(u32 *acc, u16 val)
{


 bool wrapped = val < (*acc & 0xFFFF);
 u32 newacc = (*acc & 0xFFFF0000) + val;

 if (wrapped)
  newacc += 65536;
 WRITE_ONCE(*acc, newacc);
}
