
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct fsmc_nand_data {int data_va; } ;


 scalar_t__ IS_ALIGNED (int,int) ;
 int writeb_relaxed (int const,int ) ;
 int writel_relaxed (int ,int ) ;

__attribute__((used)) static void fsmc_write_buf(struct fsmc_nand_data *host, const u8 *buf,
      int len)
{
 int i;

 if (IS_ALIGNED((uintptr_t)buf, sizeof(u32)) &&
     IS_ALIGNED(len, sizeof(u32))) {
  u32 *p = (u32 *)buf;

  len = len >> 2;
  for (i = 0; i < len; i++)
   writel_relaxed(p[i], host->data_va);
 } else {
  for (i = 0; i < len; i++)
   writeb_relaxed(buf[i], host->data_va);
 }
}
