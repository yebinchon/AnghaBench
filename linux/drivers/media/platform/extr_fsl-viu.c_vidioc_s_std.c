
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct viu_fh {TYPE_1__* dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int std; } ;


 int decoder_call (TYPE_1__*,int ,int ,int ) ;
 int s_std ;
 int video ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id id)
{
 struct viu_fh *fh = priv;

 fh->dev->std = id;
 decoder_call(fh->dev, video, s_std, id);
 return 0;
}
