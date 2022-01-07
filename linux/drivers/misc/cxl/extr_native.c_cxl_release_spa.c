
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cxl_afu {TYPE_1__* native; } ;
struct TYPE_2__ {int * spa; int spa_order; } ;


 int free_pages (unsigned long,int ) ;

void cxl_release_spa(struct cxl_afu *afu)
{
 if (afu->native->spa) {
  free_pages((unsigned long) afu->native->spa,
   afu->native->spa_order);
  afu->native->spa = ((void*)0);
 }
}
