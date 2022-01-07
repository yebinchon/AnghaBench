
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt1 {int * adaps; } ;


 int PT1_NR_ADAPS ;
 int pt1_free_adapter (int ) ;

__attribute__((used)) static void pt1_cleanup_adapters(struct pt1 *pt1)
{
 int i;
 for (i = 0; i < PT1_NR_ADAPS; i++)
  pt1_free_adapter(pt1->adaps[i]);
}
