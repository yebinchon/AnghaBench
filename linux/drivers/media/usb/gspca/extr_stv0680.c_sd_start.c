
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int video_mode; } ;
struct gspca_dev {int dummy; } ;


 int EIO ;
 int stv0680_handle_error (struct gspca_dev*,int ) ;
 int stv0680_set_video_mode (struct gspca_dev*,int) ;
 int stv_sndctrl (struct gspca_dev*,int,int,int,int) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 int ret;
 struct sd *sd = (struct sd *) gspca_dev;

 ret = stv0680_set_video_mode(gspca_dev, sd->video_mode);
 if (ret < 0)
  return ret;

 if (stv_sndctrl(gspca_dev, 0, 0x85, 0, 0x10) != 0x10)
  return stv0680_handle_error(gspca_dev, -EIO);





 if (stv_sndctrl(gspca_dev, 1, 0x09, sd->video_mode << 8, 0x0) != 0x0)
  return stv0680_handle_error(gspca_dev, -EIO);

 return 0;
}
