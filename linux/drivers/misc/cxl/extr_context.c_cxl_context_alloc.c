
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_context {int dummy; } ;


 int GFP_KERNEL ;
 struct cxl_context* kzalloc (int,int ) ;

struct cxl_context *cxl_context_alloc(void)
{
 return kzalloc(sizeof(struct cxl_context), GFP_KERNEL);
}
