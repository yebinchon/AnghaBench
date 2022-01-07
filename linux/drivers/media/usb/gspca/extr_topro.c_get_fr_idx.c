
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {scalar_t__ bridge; scalar_t__ framerate; } ;
struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 scalar_t__ BRIDGE_TP6800 ;
 scalar_t__* rates ;
 scalar_t__* rates_6810 ;

__attribute__((used)) static int get_fr_idx(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int i;

 if (sd->bridge == BRIDGE_TP6800) {
  for (i = 0; i < ARRAY_SIZE(rates) - 1; i++) {
   if (sd->framerate >= rates[i])
    break;
  }
  i = 6 - i;


  if (i == 6
   && gspca_dev->pixfmt.width == 640)
   i = 0x05;
 } else {
  for (i = 0; i < ARRAY_SIZE(rates_6810) - 1; i++) {
   if (sd->framerate >= rates_6810[i])
    break;
  }
  i = 7 - i;


  if (i == 7
   && gspca_dev->pixfmt.width == 640)
   i = 6;
  i |= 0x80;
 }
 return i;
}
