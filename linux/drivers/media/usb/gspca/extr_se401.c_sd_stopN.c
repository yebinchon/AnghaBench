
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int SE401_REQ_CAMERA_POWER ;
 int SE401_REQ_LED_CONTROL ;
 int SE401_REQ_STOP_CONTINUOUS_CAPTURE ;
 int se401_write_req (struct gspca_dev*,int ,int ,int ) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 se401_write_req(gspca_dev, SE401_REQ_STOP_CONTINUOUS_CAPTURE, 0, 0);
 se401_write_req(gspca_dev, SE401_REQ_LED_CONTROL, 0, 0);
 se401_write_req(gspca_dev, SE401_REQ_CAMERA_POWER, 0, 0);
}
