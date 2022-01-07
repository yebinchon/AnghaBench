
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ ALX_REV_A0 ;
 scalar_t__ ALX_REV_A1 ;

__attribute__((used)) static inline bool alx_is_rev_a(u8 rev)
{
 return rev == ALX_REV_A0 || rev == ALX_REV_A1;
}
