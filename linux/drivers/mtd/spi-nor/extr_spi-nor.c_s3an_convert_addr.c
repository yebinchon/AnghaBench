
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spi_nor {int page_size; } ;



__attribute__((used)) static u32 s3an_convert_addr(struct spi_nor *nor, u32 addr)
{
 u32 offset, page;

 offset = addr % nor->page_size;
 page = addr / nor->page_size;
 page <<= (nor->page_size > 512) ? 10 : 9;

 return page | offset;
}
