
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_sdio_quirk {unsigned int quirks; scalar_t__ vendor; scalar_t__ device; } ;


 struct b43_sdio_quirk* b43_sdio_quirks ;

__attribute__((used)) static unsigned int b43_sdio_get_quirks(u16 vendor, u16 device)
{
 const struct b43_sdio_quirk *q;

 for (q = b43_sdio_quirks; q->quirks; q++) {
  if (vendor == q->vendor && device == q->device)
   return q->quirks;
 }

 return 0;
}
