
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_device {int dev; } ;


 int dev_err (int *,char*,char const*,char const*) ;
 int virtio_has_feature (struct virtio_device*,unsigned int) ;

__attribute__((used)) static bool virtnet_fail_on_feature(struct virtio_device *vdev,
        unsigned int fbit,
        const char *fname, const char *dname)
{
 if (!virtio_has_feature(vdev, fbit))
  return 0;

 dev_err(&vdev->dev, "device advertises feature %s but not %s",
  fname, dname);

 return 1;
}
