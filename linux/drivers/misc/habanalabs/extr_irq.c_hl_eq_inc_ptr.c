
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ HL_EQ_LENGTH ;
 scalar_t__ unlikely (int) ;

inline u32 hl_eq_inc_ptr(u32 ptr)
{
 ptr++;
 if (unlikely(ptr == HL_EQ_LENGTH))
  ptr = 0;
 return ptr;
}
