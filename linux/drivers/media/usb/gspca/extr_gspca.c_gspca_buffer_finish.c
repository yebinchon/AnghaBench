
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_buffer {int vb2_queue; } ;
struct gspca_dev {TYPE_1__* sd_desc; scalar_t__ present; scalar_t__ usb_err; } ;
struct TYPE_2__ {int (* dq_callback ) (struct gspca_dev*) ;} ;


 int stub1 (struct gspca_dev*) ;
 struct gspca_dev* vb2_get_drv_priv (int ) ;

__attribute__((used)) static void gspca_buffer_finish(struct vb2_buffer *vb)
{
 struct gspca_dev *gspca_dev = vb2_get_drv_priv(vb->vb2_queue);

 if (!gspca_dev->sd_desc->dq_callback)
  return;

 gspca_dev->usb_err = 0;
 if (gspca_dev->present)
  gspca_dev->sd_desc->dq_callback(gspca_dev);
}
