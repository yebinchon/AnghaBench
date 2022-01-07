
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef size_t u32 ;
struct ddb_dma {size_t bufregs; size_t num; int* pbuf; int bufval; } ;
struct ddb {int dummy; } ;


 int ddbwritel (struct ddb*,int,size_t) ;

__attribute__((used)) static void ddb_redirect_dma(struct ddb *dev,
        struct ddb_dma *sdma,
        struct ddb_dma *ddma)
{
 u32 i, base;
 u64 mem;

 sdma->bufval = ddma->bufval;
 base = sdma->bufregs;
 for (i = 0; i < ddma->num; i++) {
  mem = ddma->pbuf[i];
  ddbwritel(dev, mem & 0xffffffff, base + i * 8);
  ddbwritel(dev, mem >> 32, base + i * 8 + 4);
 }
}
