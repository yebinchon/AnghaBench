
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {scalar_t__ streaming; } ;


 int USBIF_CMDONLY ;
 int free_sbufs (struct camera_data*) ;
 int set_alternate (struct camera_data*,int ) ;

int cpia2_usb_stream_pause(struct camera_data *cam)
{
 int ret = 0;
 if(cam->streaming) {
  free_sbufs(cam);
  ret = set_alternate(cam, USBIF_CMDONLY);
 }
 return ret;
}
