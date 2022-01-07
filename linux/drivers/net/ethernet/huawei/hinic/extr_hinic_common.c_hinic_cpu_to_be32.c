
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int cpu_to_be32 (int ) ;

void hinic_cpu_to_be32(void *data, int len)
{
 u32 *mem = data;
 int i;

 len = len / sizeof(u32);

 for (i = 0; i < len; i++) {
  *mem = cpu_to_be32(*mem);
  mem++;
 }
}
