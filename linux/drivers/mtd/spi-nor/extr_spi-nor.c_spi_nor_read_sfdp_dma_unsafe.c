
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_nor {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (void*) ;
 void* kmalloc (size_t,int ) ;
 int memcpy (void*,void*,size_t) ;
 int spi_nor_read_sfdp (struct spi_nor*,int ,size_t,void*) ;

__attribute__((used)) static int spi_nor_read_sfdp_dma_unsafe(struct spi_nor *nor, u32 addr,
     size_t len, void *buf)
{
 void *dma_safe_buf;
 int ret;

 dma_safe_buf = kmalloc(len, GFP_KERNEL);
 if (!dma_safe_buf)
  return -ENOMEM;

 ret = spi_nor_read_sfdp(nor, addr, len, dma_safe_buf);
 memcpy(buf, dma_safe_buf, len);
 kfree(dma_safe_buf);

 return ret;
}
