
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sd {scalar_t__ this_f; } ;
struct TYPE_2__ {scalar_t__ sizeimage; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;


 int BULK_SIZE ;
 int DISCARD_PACKET ;
 int D_FRAM ;
 int FIRST_PACKET ;
 int INTER_PACKET ;
 int LAST_PACKET ;
 int gspca_dbg (struct gspca_dev*,int ,char*,scalar_t__,scalar_t__,int) ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;

__attribute__((used)) static void sd_pkt_scan(struct gspca_dev *gspca_dev,
   u8 *data,
   int len)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (len != BULK_SIZE) {

  if (sd->this_f + len == gspca_dev->pixfmt.sizeimage) {
   gspca_frame_add(gspca_dev, LAST_PACKET, data, len);
   gspca_dbg(gspca_dev, D_FRAM, "finish frame sz %u/%u w/ len %u\n\n",
      sd->this_f, gspca_dev->pixfmt.sizeimage, len);

  } else {
   gspca_frame_add(gspca_dev, DISCARD_PACKET, ((void*)0), 0);
   gspca_dbg(gspca_dev, D_FRAM, "abort frame sz %u/%u w/ len %u\n\n",
      sd->this_f, gspca_dev->pixfmt.sizeimage, len);
  }
  sd->this_f = 0;
 } else {
  if (sd->this_f == 0)
   gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  else
   gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
  sd->this_f += len;
 }
}
