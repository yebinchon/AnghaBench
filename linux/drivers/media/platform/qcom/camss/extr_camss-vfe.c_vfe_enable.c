
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_line {int dummy; } ;
struct vfe_device {int stream_count; int was_streaming; int stream_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* bus_enable_wr_if ) (struct vfe_device*,int) ;int (* set_ds ) (struct vfe_device*) ;int (* set_qos ) (struct vfe_device*) ;int (* enable_irq_common ) (struct vfe_device*) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct vfe_device*) ;
 int stub2 (struct vfe_device*,int) ;
 int stub3 (struct vfe_device*) ;
 int stub4 (struct vfe_device*) ;
 int stub5 (struct vfe_device*,int) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 int vfe_enable_output (struct vfe_line*) ;
 int vfe_get_output (struct vfe_line*) ;
 int vfe_put_output (struct vfe_line*) ;

__attribute__((used)) static int vfe_enable(struct vfe_line *line)
{
 struct vfe_device *vfe = to_vfe(line);
 int ret;

 mutex_lock(&vfe->stream_lock);

 if (!vfe->stream_count) {
  vfe->ops->enable_irq_common(vfe);

  vfe->ops->bus_enable_wr_if(vfe, 1);

  vfe->ops->set_qos(vfe);

  vfe->ops->set_ds(vfe);
 }

 vfe->stream_count++;

 mutex_unlock(&vfe->stream_lock);

 ret = vfe_get_output(line);
 if (ret < 0)
  goto error_get_output;

 ret = vfe_enable_output(line);
 if (ret < 0)
  goto error_enable_output;

 vfe->was_streaming = 1;

 return 0;


error_enable_output:
 vfe_put_output(line);

error_get_output:
 mutex_lock(&vfe->stream_lock);

 if (vfe->stream_count == 1)
  vfe->ops->bus_enable_wr_if(vfe, 0);

 vfe->stream_count--;

 mutex_unlock(&vfe->stream_lock);

 return ret;
}
