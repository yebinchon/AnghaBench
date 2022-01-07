
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emac_instance {struct device_node** blist; } ;
struct emac_depentry {scalar_t__ phandle; int * drvdata; int * ofdev; int * node; } ;
struct device_node {int dummy; } ;


 int EMAC_DEP_COUNT ;
 int EMAC_DEP_PREV_IDX ;
 int * of_find_device_by_node (int *) ;
 int * of_find_node_by_phandle (scalar_t__) ;
 int * of_node_get (struct device_node*) ;
 int * platform_get_drvdata (int *) ;

__attribute__((used)) static int emac_check_deps(struct emac_instance *dev,
      struct emac_depentry *deps)
{
 int i, there = 0;
 struct device_node *np;

 for (i = 0; i < EMAC_DEP_COUNT; i++) {

  if (deps[i].phandle == 0) {
   there++;
   continue;
  }

  if (i == EMAC_DEP_PREV_IDX) {
   np = *(dev->blist - 1);
   if (np == ((void*)0)) {
    deps[i].phandle = 0;
    there++;
    continue;
   }
   if (deps[i].node == ((void*)0))
    deps[i].node = of_node_get(np);
  }
  if (deps[i].node == ((void*)0))
   deps[i].node = of_find_node_by_phandle(deps[i].phandle);
  if (deps[i].node == ((void*)0))
   continue;
  if (deps[i].ofdev == ((void*)0))
   deps[i].ofdev = of_find_device_by_node(deps[i].node);
  if (deps[i].ofdev == ((void*)0))
   continue;
  if (deps[i].drvdata == ((void*)0))
   deps[i].drvdata = platform_get_drvdata(deps[i].ofdev);
  if (deps[i].drvdata != ((void*)0))
   there++;
 }
 return there == EMAC_DEP_COUNT;
}
