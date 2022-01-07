
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocxl_afu {int list; } ;


 int deactivate_afu (struct ocxl_afu*) ;
 int deconfigure_afu (struct ocxl_afu*) ;
 int list_del (int *) ;
 int ocxl_afu_put (struct ocxl_afu*) ;
 int ocxl_context_detach_all (struct ocxl_afu*) ;

__attribute__((used)) static void remove_afu(struct ocxl_afu *afu)
{
 list_del(&afu->list);
 ocxl_context_detach_all(afu);
 deactivate_afu(afu);
 deconfigure_afu(afu);
 ocxl_afu_put(afu);
}
