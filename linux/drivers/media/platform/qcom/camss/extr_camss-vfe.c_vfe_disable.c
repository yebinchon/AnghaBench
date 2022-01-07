
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_line {int dummy; } ;
struct vfe_device {int stream_count; int stream_lock; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* bus_enable_wr_if ) (struct vfe_device*,int ) ;} ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct vfe_device*,int ) ;
 struct vfe_device* to_vfe (struct vfe_line*) ;
 int vfe_disable_output (struct vfe_line*) ;
 int vfe_put_output (struct vfe_line*) ;

__attribute__((used)) static int vfe_disable(struct vfe_line *line)
{
 struct vfe_device *vfe = to_vfe(line);

 vfe_disable_output(line);

 vfe_put_output(line);

 mutex_lock(&vfe->stream_lock);

 if (vfe->stream_count == 1)
  vfe->ops->bus_enable_wr_if(vfe, 0);

 vfe->stream_count--;

 mutex_unlock(&vfe->stream_lock);

 return 0;
}
