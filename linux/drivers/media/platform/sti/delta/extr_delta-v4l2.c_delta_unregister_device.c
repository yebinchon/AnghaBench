
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delta_dev {int vdev; scalar_t__ m2m_dev; } ;


 int v4l2_m2m_release (scalar_t__) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void delta_unregister_device(struct delta_dev *delta)
{
 if (!delta)
  return;

 if (delta->m2m_dev)
  v4l2_m2m_release(delta->m2m_dev);

 video_unregister_device(delta->vdev);
}
