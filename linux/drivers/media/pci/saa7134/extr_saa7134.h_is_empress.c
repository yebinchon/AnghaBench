
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int * queue; } ;
struct saa7134_dev {int empress_vbq; } ;
struct file {int dummy; } ;


 struct video_device* video_devdata (struct file*) ;
 struct saa7134_dev* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static inline bool is_empress(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct saa7134_dev *dev = video_get_drvdata(vdev);

 return vdev->queue == &dev->empress_vbq;
}
