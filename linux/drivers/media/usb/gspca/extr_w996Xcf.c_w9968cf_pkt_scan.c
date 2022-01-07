
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {int* jpeg_hdr; } ;
struct gspca_dev {size_t curr_mode; scalar_t__ empty_packet; } ;
struct TYPE_2__ {scalar_t__ pixelformat; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int JPEG_HDR_SZ ;
 int LAST_PACKET ;
 scalar_t__ V4L2_PIX_FMT_JPEG ;
 int gspca_frame_add (struct gspca_dev*,int ,int*,int) ;
 TYPE_1__* w9968cf_vga_mode ;

__attribute__((used)) static void w9968cf_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (w9968cf_vga_mode[gspca_dev->curr_mode].pixelformat ==
     V4L2_PIX_FMT_JPEG) {
  if (len >= 2 &&
      data[0] == 0xff &&
      data[1] == 0xd8) {
   gspca_frame_add(gspca_dev, LAST_PACKET,
     ((void*)0), 0);
   gspca_frame_add(gspca_dev, FIRST_PACKET,
     sd->jpeg_hdr, JPEG_HDR_SZ);


   len -= 2;
   data += 2;
  }
 } else {

  if (gspca_dev->empty_packet) {
   gspca_frame_add(gspca_dev, LAST_PACKET,
      ((void*)0), 0);
   gspca_frame_add(gspca_dev, FIRST_PACKET,
     ((void*)0), 0);
   gspca_dev->empty_packet = 0;
  }
 }
 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
