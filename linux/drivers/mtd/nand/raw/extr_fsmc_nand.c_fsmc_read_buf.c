
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fsmc_nand_data {int data_va; } ;


 scalar_t__ IS_ALIGNED (int,int) ;
 int readb_relaxed (int ) ;
 int readl_relaxed (int ) ;

__attribute__((used)) static void fsmc_read_buf(struct fsmc_nand_data *host, u8 *buf, int len)
{
 int i;

 if (IS_ALIGNED((uintptr_t)buf, sizeof(u32)) &&
     IS_ALIGNED(len, sizeof(u32))) {
  u32 *p = (u32 *)buf;

  len = len >> 2;
  for (i = 0; i < len; i++)
   p[i] = readl_relaxed(host->data_va);
 } else {
  for (i = 0; i < len; i++)
   buf[i] = readb_relaxed(host->data_va);
 }
}
