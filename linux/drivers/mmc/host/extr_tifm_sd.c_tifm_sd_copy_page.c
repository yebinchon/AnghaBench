
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 unsigned char* kmap_atomic (struct page*) ;
 int kunmap_atomic (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;

__attribute__((used)) static void tifm_sd_copy_page(struct page *dst, unsigned int dst_off,
         struct page *src, unsigned int src_off,
         unsigned int count)
{
 unsigned char *src_buf = kmap_atomic(src) + src_off;
 unsigned char *dst_buf = kmap_atomic(dst) + dst_off;

 memcpy(dst_buf, src_buf, count);

 kunmap_atomic(dst_buf - dst_off);
 kunmap_atomic(src_buf - src_off);
}
