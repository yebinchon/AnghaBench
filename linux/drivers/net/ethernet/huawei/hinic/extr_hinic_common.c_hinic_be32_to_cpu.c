
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int be32_to_cpu (int ) ;

void hinic_be32_to_cpu(void *data, int len)
{
 u32 *mem = data;
 int i;

 len = len / sizeof(u32);

 for (i = 0; i < len; i++) {
  *mem = be32_to_cpu(*mem);
  mem++;
 }
}
