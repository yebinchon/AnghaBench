
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct cam {TYPE_1__* cam_mode; } ;
struct gspca_dev {size_t curr_mode; int image_len; struct cam cam; } ;
struct TYPE_2__ {int sizeimage; } ;


 int FIRST_PACKET ;
 int INTER_PACKET ;
 int gspca_frame_add (struct gspca_dev*,int ,int *,int) ;
 int sd_complete_frame (struct gspca_dev*,int *,int) ;

__attribute__((used)) static void sd_pkt_scan_bayer(struct gspca_dev *gspca_dev, u8 *data, int len)
{
 struct cam *cam = &gspca_dev->cam;
 int imagesize = cam->cam_mode[gspca_dev->curr_mode].sizeimage;

 if (gspca_dev->image_len == 0) {
  gspca_frame_add(gspca_dev, FIRST_PACKET, data, len);
  return;
 }

 if (gspca_dev->image_len + len >= imagesize) {
  sd_complete_frame(gspca_dev, data, len);
  return;
 }

 gspca_frame_add(gspca_dev, INTER_PACKET, data, len);
}
