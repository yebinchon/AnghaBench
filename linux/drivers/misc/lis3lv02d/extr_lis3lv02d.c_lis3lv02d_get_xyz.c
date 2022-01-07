
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_2__ {int z; int y; int x; } ;
struct lis3lv02d {scalar_t__ whoami; int (* read_data ) (struct lis3lv02d*,int ) ;int scale; TYPE_1__ ac; int (* blkread ) (struct lis3lv02d*,int ,int,scalar_t__*) ;} ;
typedef int s8 ;
typedef int s16 ;


 int LIS3_ACCURACY ;
 int OUTX ;
 int OUTX_L ;
 int OUTY ;
 int OUTZ ;
 scalar_t__ WAI_12B ;
 scalar_t__ le16_to_cpu (int ) ;
 int lis3lv02d_get_axis (int ,int*) ;
 int stub1 (struct lis3lv02d*,int ,int,scalar_t__*) ;
 int stub2 (struct lis3lv02d*,int ,int,scalar_t__*) ;
 int stub3 (struct lis3lv02d*,int ) ;
 int stub4 (struct lis3lv02d*,int ) ;
 int stub5 (struct lis3lv02d*,int ) ;

__attribute__((used)) static void lis3lv02d_get_xyz(struct lis3lv02d *lis3, int *x, int *y, int *z)
{
 int position[3];
 int i;

 if (lis3->blkread) {
  if (lis3->whoami == WAI_12B) {
   u16 data[3];
   lis3->blkread(lis3, OUTX_L, 6, (u8 *)data);
   for (i = 0; i < 3; i++)
    position[i] = (s16)le16_to_cpu(data[i]);
  } else {
   u8 data[5];

   lis3->blkread(lis3, OUTX, 5, data);
   for (i = 0; i < 3; i++)
    position[i] = (s8)data[i * 2];
  }
 } else {
  position[0] = lis3->read_data(lis3, OUTX);
  position[1] = lis3->read_data(lis3, OUTY);
  position[2] = lis3->read_data(lis3, OUTZ);
 }

 for (i = 0; i < 3; i++)
  position[i] = (position[i] * lis3->scale) / LIS3_ACCURACY;

 *x = lis3lv02d_get_axis(lis3->ac.x, position);
 *y = lis3lv02d_get_axis(lis3->ac.y, position);
 *z = lis3lv02d_get_axis(lis3->ac.z, position);
}
