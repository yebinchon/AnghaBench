
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ bridge; scalar_t__ image_offset; } ;
struct TYPE_2__ {int sizeimage; } ;
struct gspca_dev {int image_len; TYPE_1__ pixfmt; } ;


 scalar_t__ BRIDGE_VC0321 ;
 int D_PACK ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (data[0] == 0xff && data[1] == 0xd8) {
  gspca_dbg(gspca_dev, D_PACK,
     "vc032x header packet found len %d\n", len);
  gspca_frame_add(gspca_dev, LAST_PACKET, ((void*)0), 0);
  data += sd->image_offset;
  len -= sd->image_offset;
  gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  return;
 }



 if (sd->bridge == BRIDGE_VC0321) {
  int size, l;

  l = gspca_dev->image_len;
  size = gspca_dev->pixfmt.sizeimage;
  if (len > size - l)
   len = size - l;
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
