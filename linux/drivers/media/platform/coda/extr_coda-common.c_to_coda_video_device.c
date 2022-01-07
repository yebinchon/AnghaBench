
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct coda_video_device {int dummy; } ;
struct coda_dev {TYPE_1__* devtype; struct video_device* vfd; } ;
struct TYPE_2__ {unsigned int num_vdevs; struct coda_video_device const** vdevs; } ;


 struct coda_dev* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static const struct coda_video_device *to_coda_video_device(struct video_device
           *vdev)
{
 struct coda_dev *dev = video_get_drvdata(vdev);
 unsigned int i = vdev - dev->vfd;

 if (i >= dev->devtype->num_vdevs)
  return ((void*)0);

 return dev->devtype->vdevs[i];
}
