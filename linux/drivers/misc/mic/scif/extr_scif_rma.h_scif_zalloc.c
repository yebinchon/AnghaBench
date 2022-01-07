
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t ALIGN (size_t,int ) ;
 int GFP_KERNEL ;
 scalar_t__ MAX_ORDER ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,scalar_t__) ;
 scalar_t__ get_order (size_t) ;
 void* vzalloc (size_t) ;

__attribute__((used)) static inline void *scif_zalloc(size_t size)
{
 void *ret = ((void*)0);
 size_t align = ALIGN(size, PAGE_SIZE);

 if (align && get_order(align) < MAX_ORDER)
  ret = (void *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
            get_order(align));
 return ret ? ret : vzalloc(align);
}
