
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int v4l2dev; } ;


 int core ;
 int log_status ;
 int v4l2_device_call_all (int *,int ,int ,int ) ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_log_status(struct file *file, void *fh)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;

 v4l2_device_call_all(&cxdev->v4l2dev, 0, core, log_status);

 return 0;
}
