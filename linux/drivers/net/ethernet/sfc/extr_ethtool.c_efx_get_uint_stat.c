
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u64 ;



__attribute__((used)) static u64 efx_get_uint_stat(void *field)
{
 return *(unsigned int *)field;
}
