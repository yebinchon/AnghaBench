
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device_id {int dummy; } ;
struct sd {int stream_flag; scalar_t__ cam_tag; } ;
struct cam {int npkt; int nmodes; int cam_mode; } ;
struct gspca_dev {int xfer_ep; int pkt_size; struct cam cam; } ;


 int ARRAY_SIZE (int ) ;
 int video_camera_mode ;

__attribute__((used)) static int sd_config_video(struct gspca_dev *gspca_dev,
       const struct usb_device_id *id)
{
 struct sd *sd = (struct sd *) gspca_dev;
 struct cam *cam;

 sd->cam_tag = 0;

 sd->stream_flag = 0x80;

 cam = &gspca_dev->cam;

 cam->cam_mode = video_camera_mode;
 cam->nmodes = ARRAY_SIZE(video_camera_mode);

 gspca_dev->xfer_ep = 0x81;







 return 0;
}
