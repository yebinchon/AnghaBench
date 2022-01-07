
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int __ffs (int) ;

__attribute__((used)) static inline int get_field(u32 value, u32 mask)
{
 return (value & mask) >> __ffs(mask);
}
