
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;
struct b2055_inittab_entry {int flags; int ghz2; int ghz5; } ;


 unsigned int ARRAY_SIZE (struct b2055_inittab_entry*) ;
 int B2055_INITTAB_ENTRY_OK ;
 int B2055_INITTAB_UPLOAD ;
 int B43_MMIO_MACCTL ;
 struct b2055_inittab_entry* b2055_inittab ;
 int b43_radio_write16 (struct b43_wldev*,unsigned int,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;

void b2055_upload_inittab(struct b43_wldev *dev,
     bool ghz5, bool ignore_uploadflag)
{
 const struct b2055_inittab_entry *e;
 unsigned int i, writes = 0;
 u16 value;

 for (i = 0; i < ARRAY_SIZE(b2055_inittab); i++) {
  e = &(b2055_inittab[i]);
  if (!(e->flags & B2055_INITTAB_ENTRY_OK))
   continue;
  if ((e->flags & B2055_INITTAB_UPLOAD) || ignore_uploadflag) {
   if (ghz5)
    value = e->ghz5;
   else
    value = e->ghz2;
   b43_radio_write16(dev, i, value);
   if (++writes % 4 == 0)
    b43_read32(dev, B43_MMIO_MACCTL);
  }
 }
}
