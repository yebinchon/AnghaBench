
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct address_space {int dummy; } ;


 struct page* read_mapping_page (struct address_space*,int,int *) ;

__attribute__((used)) static struct page *page_read(struct address_space *mapping, int index)
{
 return read_mapping_page(mapping, index, ((void*)0));
}
