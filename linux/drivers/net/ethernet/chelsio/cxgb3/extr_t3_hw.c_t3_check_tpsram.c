
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct adapter {int dummy; } ;
typedef int csum ;
typedef int __be32 ;


 int CH_ERR (struct adapter*,char*,int) ;
 int EINVAL ;
 scalar_t__ ntohl (int const) ;

int t3_check_tpsram(struct adapter *adapter, const u8 *tp_sram,
      unsigned int size)
{
 u32 csum;
 unsigned int i;
 const __be32 *p = (const __be32 *)tp_sram;


 for (csum = 0, i = 0; i < size / sizeof(csum); i++)
  csum += ntohl(p[i]);
 if (csum != 0xffffffff) {
  CH_ERR(adapter, "corrupted protocol SRAM image, checksum %u\n",
         csum);
  return -EINVAL;
 }

 return 0;
}
