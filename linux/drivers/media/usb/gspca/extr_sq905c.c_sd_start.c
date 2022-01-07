
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sd {int work_struct; int work_thread; int cap_mode; } ;
struct TYPE_4__ {int width; } ;
struct TYPE_3__ {int cam_mode; } ;
struct gspca_dev {TYPE_2__ pixfmt; TYPE_1__ cam; } ;


 int D_STREAM ;
 int MODULE_NAME ;
 int SQ905C_CAPTURE_HI ;
 int SQ905C_CAPTURE_INDEX ;
 int SQ905C_CAPTURE_MED ;
 int create_singlethread_workqueue (int ) ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int queue_work (int ,int *) ;
 int sq905c_command (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *dev = (struct sd *) gspca_dev;
 int ret;

 dev->cap_mode = gspca_dev->cam.cam_mode;

 switch (gspca_dev->pixfmt.width) {
 case 640:
  gspca_dbg(gspca_dev, D_STREAM, "Start streaming at high resolution\n");
  dev->cap_mode++;
  ret = sq905c_command(gspca_dev, SQ905C_CAPTURE_HI,
      SQ905C_CAPTURE_INDEX);
  break;
 default:
  gspca_dbg(gspca_dev, D_STREAM, "Start streaming at medium resolution\n");
  ret = sq905c_command(gspca_dev, SQ905C_CAPTURE_MED,
      SQ905C_CAPTURE_INDEX);
 }

 if (ret < 0) {
  gspca_err(gspca_dev, "Start streaming command failed\n");
  return ret;
 }

 dev->work_thread = create_singlethread_workqueue(MODULE_NAME);
 queue_work(dev->work_thread, &dev->work_struct);

 return 0;
}
