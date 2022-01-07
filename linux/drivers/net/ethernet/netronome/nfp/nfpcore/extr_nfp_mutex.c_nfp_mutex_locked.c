
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;



__attribute__((used)) static u32 nfp_mutex_locked(u16 interface)
{
 return (u32)interface << 16 | 0x000f;
}
