
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;



__attribute__((used)) static u32 wq_get_byte_sz(u8 log_sz, u8 log_stride)
{
 return ((u32)1 << log_sz) << log_stride;
}
