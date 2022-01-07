
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_ainf_volume {int root; } ;
struct TYPE_2__ {int list; int rb; } ;
struct ubi_ainf_peb {TYPE_1__ u; } ;
struct list_head {int dummy; } ;


 int list_add_tail (int *,struct list_head*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static inline void ubi_move_aeb_to_list(struct ubi_ainf_volume *av,
      struct ubi_ainf_peb *aeb,
      struct list_head *list)
{
  rb_erase(&aeb->u.rb, &av->root);
  list_add_tail(&aeb->u.list, list);
}
