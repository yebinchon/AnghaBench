
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct viu_fh {TYPE_1__* dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int std; } ;



__attribute__((used)) static int vidioc_g_std(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct viu_fh *fh = priv;

 *std_id = fh->dev->std;
 return 0;
}
