
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct page {int dummy; } ;
typedef int gfp_t ;


 int __GFP_COMP ;
 struct page* alloc_pages (int ,scalar_t__) ;
 scalar_t__ get_order (scalar_t__) ;

__attribute__((used)) static inline struct page *be_alloc_pages(u32 size, gfp_t gfp)
{
 u32 order = get_order(size);

 if (order > 0)
  gfp |= __GFP_COMP;
 return alloc_pages(gfp, order);
}
