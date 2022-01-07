
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_wl_entry {int dummy; } ;
struct ubi_device {struct ubi_wl_entry* move_to; struct ubi_wl_entry* move_from; int erroneous; int scrub; } ;


 scalar_t__ in_wl_tree (struct ubi_wl_entry*,int *) ;

__attribute__((used)) static bool scrub_possible(struct ubi_device *ubi, struct ubi_wl_entry *e)
{
 if (in_wl_tree(e, &ubi->scrub))
  return 0;
 else if (in_wl_tree(e, &ubi->erroneous))
  return 0;
 else if (ubi->move_from == e)
  return 0;
 else if (ubi->move_to == e)
  return 0;

 return 1;
}
