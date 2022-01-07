
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_mdp_dev {int m2m_dev; int vdev; } ;


 int v4l2_m2m_release (int ) ;
 int video_unregister_device (int ) ;

void mtk_mdp_unregister_m2m_device(struct mtk_mdp_dev *mdp)
{
 video_unregister_device(mdp->vdev);
 v4l2_m2m_release(mdp->m2m_dev);
}
