
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 scalar_t__ is_field_set (int,int) ;

__attribute__((used)) static inline bool unsupported(u32 conf, u32 conf_mask, u32 val, u32 mask)
{
 return !(conf & conf_mask) && is_field_set(val, mask);
}
