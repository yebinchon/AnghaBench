
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct de_private {int media_type; int media_supported; int media_advertise; TYPE_1__* media; } ;
struct TYPE_2__ {unsigned int type; int csr15; int csr14; int csr13; } ;


 unsigned int DE_MAX_MEDIA ;

 unsigned int DE_MEDIA_INVALID ;


 int SUPPORTED_10baseT_Full ;
 int SUPPORTED_10baseT_Half ;
 int SUPPORTED_AUI ;
 int SUPPORTED_TP ;
 int * t21040_csr13 ;
 int * t21040_csr14 ;
 int * t21040_csr15 ;

__attribute__((used)) static void de21040_get_media_info(struct de_private *de)
{
 unsigned int i;

 de->media_type = 129;
 de->media_supported |= SUPPORTED_TP | SUPPORTED_10baseT_Full |
          SUPPORTED_10baseT_Half | SUPPORTED_AUI;
 de->media_advertise = de->media_supported;

 for (i = 0; i < DE_MAX_MEDIA; i++) {
  switch (i) {
  case 130:
  case 129:
  case 128:
   de->media[i].type = i;
   de->media[i].csr13 = t21040_csr13[i];
   de->media[i].csr14 = t21040_csr14[i];
   de->media[i].csr15 = t21040_csr15[i];
   break;
  default:
   de->media[i].type = DE_MEDIA_INVALID;
   break;
  }
 }
}
