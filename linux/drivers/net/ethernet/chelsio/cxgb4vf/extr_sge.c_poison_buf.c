
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int POISON_BUF_VAL ;
 int memset (int ,int ,size_t) ;
 int page_address (struct page*) ;

__attribute__((used)) static inline void poison_buf(struct page *page, size_t sz)
{

 memset(page_address(page), POISON_BUF_VAL, sz);

}
