
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int dummy; } ;
struct ceu_device {int dummy; } ;


 int kfree (struct ceu_device*) ;
 struct ceu_device* video_get_drvdata (struct video_device*) ;

__attribute__((used)) static void ceu_vdev_release(struct video_device *vdev)
{
 struct ceu_device *ceudev = video_get_drvdata(vdev);

 kfree(ceudev);
}
