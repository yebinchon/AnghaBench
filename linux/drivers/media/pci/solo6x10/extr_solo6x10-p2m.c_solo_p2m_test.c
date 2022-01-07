
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct solo_dev {int dummy; } ;


 int EIO ;
 int GFP_KERNEL ;
 scalar_t__ __get_free_pages (int ,int) ;
 int free_pages (unsigned long,int) ;
 int get_order (int) ;
 int memset (int*,int,int) ;
 scalar_t__ solo_p2m_dma (struct solo_dev*,int,int*,int,int,int ,int ) ;

__attribute__((used)) static int solo_p2m_test(struct solo_dev *solo_dev, int base, int size)
{
 u32 *wr_buf;
 u32 *rd_buf;
 int i;
 int ret = -EIO;
 int order = get_order(size);

 wr_buf = (u32 *)__get_free_pages(GFP_KERNEL, order);
 if (wr_buf == ((void*)0))
  return -1;

 rd_buf = (u32 *)__get_free_pages(GFP_KERNEL, order);
 if (rd_buf == ((void*)0)) {
  free_pages((unsigned long)wr_buf, order);
  return -1;
 }

 for (i = 0; i < (size >> 3); i++)
  *(wr_buf + i) = (i << 16) | (i + 1);

 for (i = (size >> 3); i < (size >> 2); i++)
  *(wr_buf + i) = ~((i << 16) | (i + 1));

 memset(rd_buf, 0x55, size);

 if (solo_p2m_dma(solo_dev, 1, wr_buf, base, size, 0, 0))
  goto test_fail;

 if (solo_p2m_dma(solo_dev, 0, rd_buf, base, size, 0, 0))
  goto test_fail;

 for (i = 0; i < (size >> 2); i++) {
  if (*(wr_buf + i) != *(rd_buf + i))
   goto test_fail;
 }

 ret = 0;

test_fail:
 free_pages((unsigned long)wr_buf, order);
 free_pages((unsigned long)rd_buf, order);

 return ret;
}
