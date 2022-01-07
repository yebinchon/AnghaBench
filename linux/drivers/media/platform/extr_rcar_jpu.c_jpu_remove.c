
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct jpu {int v4l2_dev; int m2m_dev; int vfd_encoder; int vfd_decoder; } ;


 struct jpu* platform_get_drvdata (struct platform_device*) ;
 int v4l2_device_unregister (int *) ;
 int v4l2_m2m_release (int ) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int jpu_remove(struct platform_device *pdev)
{
 struct jpu *jpu = platform_get_drvdata(pdev);

 video_unregister_device(&jpu->vfd_decoder);
 video_unregister_device(&jpu->vfd_encoder);
 v4l2_m2m_release(jpu->m2m_dev);
 v4l2_device_unregister(&jpu->v4l2_dev);

 return 0;
}
