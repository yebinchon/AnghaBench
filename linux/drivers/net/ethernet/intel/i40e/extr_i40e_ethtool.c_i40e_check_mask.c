
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static int i40e_check_mask(u64 mask, u64 field)
{
 u64 value = mask & field;

 if (value == field)
  return 1;
 else if (!value)
  return 0;
 else
  return -1;
}
