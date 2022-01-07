
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int tid_tab; } ;


 int kvfree (int ) ;

__attribute__((used)) static void free_tid_maps(struct tid_info *t)
{
 kvfree(t->tid_tab);
}
