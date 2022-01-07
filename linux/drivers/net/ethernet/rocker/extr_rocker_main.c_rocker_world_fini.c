
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rocker_world_ops {int (* fini ) (struct rocker*) ;} ;
struct rocker {int wpriv; struct rocker_world_ops* wops; } ;


 int kfree (int ) ;
 int stub1 (struct rocker*) ;

__attribute__((used)) static void rocker_world_fini(struct rocker *rocker)
{
 struct rocker_world_ops *wops = rocker->wops;

 if (!wops || !wops->fini)
  return;
 wops->fini(rocker);
 kfree(rocker->wpriv);
}
