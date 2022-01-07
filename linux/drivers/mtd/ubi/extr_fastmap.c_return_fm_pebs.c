
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubi_fastmap_layout {int used_blocks; int ** e; int * to_be_tortured; } ;
struct ubi_device {int dummy; } ;


 int ubi_wl_put_fm_peb (struct ubi_device*,int *,int,int ) ;

__attribute__((used)) static void return_fm_pebs(struct ubi_device *ubi,
      struct ubi_fastmap_layout *fm)
{
 int i;

 if (!fm)
  return;

 for (i = 0; i < fm->used_blocks; i++) {
  if (fm->e[i]) {
   ubi_wl_put_fm_peb(ubi, fm->e[i], i,
       fm->to_be_tortured[i]);
   fm->e[i] = ((void*)0);
  }
 }
}
