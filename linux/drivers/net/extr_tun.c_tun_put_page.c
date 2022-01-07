
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_page {int count; scalar_t__ page; } ;


 int __page_frag_cache_drain (scalar_t__,int ) ;

__attribute__((used)) static void tun_put_page(struct tun_page *tpage)
{
 if (tpage->page)
  __page_frag_cache_drain(tpage->page, tpage->count);
}
