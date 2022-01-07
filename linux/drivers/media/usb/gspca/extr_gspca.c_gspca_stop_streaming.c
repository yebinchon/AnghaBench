
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct gspca_dev {int dummy; } ;


 int VB2_BUF_STATE_ERROR ;
 int gspca_return_all_buffers (struct gspca_dev*,int ) ;
 int gspca_stream_off (struct gspca_dev*) ;
 struct gspca_dev* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void gspca_stop_streaming(struct vb2_queue *vq)
{
 struct gspca_dev *gspca_dev = vb2_get_drv_priv(vq);

 gspca_stream_off(gspca_dev);


 gspca_return_all_buffers(gspca_dev, VB2_BUF_STATE_ERROR);
}
