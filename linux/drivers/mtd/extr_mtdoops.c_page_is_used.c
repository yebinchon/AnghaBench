
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtdoops_context {int oops_page_used; } ;


 int test_bit (int,int ) ;

__attribute__((used)) static int page_is_used(struct mtdoops_context *cxt, int page)
{
 return test_bit(page, cxt->oops_page_used);
}
