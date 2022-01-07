
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static bool nfp_mutex_is_unlocked(u32 val)
{
 return (val & 0xffff) == 0000;
}
