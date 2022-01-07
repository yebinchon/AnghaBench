
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spa {int spa_order; scalar_t__ spa_mem; } ;
struct ocxl_link {struct spa* spa; int dev; int bus; int domain; } ;


 int free_pages (unsigned long,int ) ;
 int kfree (struct spa*) ;
 int pr_debug (char*,int ,int ,int ) ;

__attribute__((used)) static void free_spa(struct ocxl_link *link)
{
 struct spa *spa = link->spa;

 pr_debug("Freeing SPA for %x:%x:%x\n", link->domain, link->bus,
  link->dev);

 if (spa && spa->spa_mem) {
  free_pages((unsigned long) spa->spa_mem, spa->spa_order);
  kfree(spa);
  link->spa = ((void*)0);
 }
}
