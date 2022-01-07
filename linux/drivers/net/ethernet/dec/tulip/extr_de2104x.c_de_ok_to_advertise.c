
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct de_private {int media_advertise; } ;


 int ADVERTISED_10baseT_Full ;
 int ADVERTISED_10baseT_Half ;
 int ADVERTISED_AUI ;
 int ADVERTISED_Autoneg ;
 int ADVERTISED_BNC ;






__attribute__((used)) static unsigned int de_ok_to_advertise (struct de_private *de, u32 new_media)
{
 switch (new_media) {
 case 129:
  if (!(de->media_advertise & ADVERTISED_Autoneg))
   return 0;
  if (!(de->media_advertise & (ADVERTISED_10baseT_Half | ADVERTISED_10baseT_Full)))
   return 0;
  break;
 case 131:
  if (!(de->media_advertise & ADVERTISED_BNC))
   return 0;
  break;
 case 132:
  if (!(de->media_advertise & ADVERTISED_AUI))
   return 0;
  break;
 case 130:
  if (!(de->media_advertise & ADVERTISED_10baseT_Half))
   return 0;
  break;
 case 128:
  if (!(de->media_advertise & ADVERTISED_10baseT_Full))
   return 0;
  break;
 }

 return 1;
}
