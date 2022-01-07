
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vdev; scalar_t__ m2m_dev; } ;
struct bdisp_dev {TYPE_1__ m2m; } ;


 int v4l2_m2m_release (scalar_t__) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void bdisp_unregister_device(struct bdisp_dev *bdisp)
{
 if (!bdisp)
  return;

 if (bdisp->m2m.m2m_dev)
  v4l2_m2m_release(bdisp->m2m.m2m_dev);

 video_unregister_device(bdisp->m2m.vdev);
}
