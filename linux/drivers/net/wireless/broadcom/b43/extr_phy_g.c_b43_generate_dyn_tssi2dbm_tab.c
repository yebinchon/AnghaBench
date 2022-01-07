
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int wl; } ;
typedef int s16 ;


 int GFP_KERNEL ;
 int b43_tssi2dbm_entry (int *,unsigned int,int ,int ,int ) ;
 int b43err (int ,char*) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

u8 *b43_generate_dyn_tssi2dbm_tab(struct b43_wldev *dev,
      s16 pab0, s16 pab1, s16 pab2)
{
 unsigned int i;
 u8 *tab;
 int err;

 tab = kmalloc(64, GFP_KERNEL);
 if (!tab) {
  b43err(dev->wl, "Could not allocate memory "
         "for tssi2dbm table\n");
  return ((void*)0);
 }
 for (i = 0; i < 64; i++) {
  err = b43_tssi2dbm_entry(tab, i, pab0, pab1, pab2);
  if (err) {
   b43err(dev->wl, "Could not generate "
          "tssi2dBm table\n");
   kfree(tab);
   return ((void*)0);
  }
 }

 return tab;
}
