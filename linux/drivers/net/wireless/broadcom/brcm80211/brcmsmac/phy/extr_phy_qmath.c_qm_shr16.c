
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s16 ;


 int qm_shl16 (int ,int) ;

s16 qm_shr16(s16 op, int shift)
{
 return qm_shl16(op, -shift);
}
