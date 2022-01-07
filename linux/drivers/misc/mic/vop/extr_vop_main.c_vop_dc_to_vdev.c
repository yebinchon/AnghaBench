
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mic_device_ctrl {int vdev; } ;
struct _vop_vdev {int dummy; } ;


 scalar_t__ readq (int *) ;

__attribute__((used)) static struct _vop_vdev *vop_dc_to_vdev(struct mic_device_ctrl *dc)
{
 return (struct _vop_vdev *)(unsigned long)readq(&dc->vdev);
}
