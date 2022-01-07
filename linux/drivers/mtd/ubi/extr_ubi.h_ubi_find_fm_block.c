
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubi_wl_entry {int pnum; } ;
struct ubi_device {TYPE_1__* fm; } ;
struct TYPE_2__ {int used_blocks; struct ubi_wl_entry** e; } ;



__attribute__((used)) static inline struct ubi_wl_entry *ubi_find_fm_block(const struct ubi_device *ubi,
           int pnum)
{
 int i;

 if (ubi->fm) {
  for (i = 0; i < ubi->fm->used_blocks; i++) {
   if (ubi->fm->e[i]->pnum == pnum)
    return ubi->fm->e[i];
  }
 }

 return ((void*)0);
}
