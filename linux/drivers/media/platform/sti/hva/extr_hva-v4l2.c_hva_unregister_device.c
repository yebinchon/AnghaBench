
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hva_dev {int vdev; scalar_t__ m2m_dev; } ;


 int v4l2_m2m_release (scalar_t__) ;
 int video_unregister_device (int ) ;

__attribute__((used)) static void hva_unregister_device(struct hva_dev *hva)
{
 if (!hva)
  return;

 if (hva->m2m_dev)
  v4l2_m2m_release(hva->m2m_dev);

 video_unregister_device(hva->vdev);
}
