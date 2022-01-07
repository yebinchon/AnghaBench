
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdoops_context {int oops_page_used; } ;


 int clear_bit (int,int ) ;

__attribute__((used)) static void mark_page_unused(struct mtdoops_context *cxt, int page)
{
 clear_bit(page, cxt->oops_page_used);
}
