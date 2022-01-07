
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct camss {unsigned int vfe_num; int ref_count; int notifier; int * vfe; } ;


 scalar_t__ atomic_read (int *) ;
 int camss_delete (struct camss*) ;
 int camss_unregister_entities (struct camss*) ;
 int msm_vfe_stop_streaming (int *) ;
 struct camss* platform_get_drvdata (struct platform_device*) ;
 int v4l2_async_notifier_cleanup (int *) ;
 int v4l2_async_notifier_unregister (int *) ;

__attribute__((used)) static int camss_remove(struct platform_device *pdev)
{
 unsigned int i;

 struct camss *camss = platform_get_drvdata(pdev);

 for (i = 0; i < camss->vfe_num; i++)
  msm_vfe_stop_streaming(&camss->vfe[i]);

 v4l2_async_notifier_unregister(&camss->notifier);
 v4l2_async_notifier_cleanup(&camss->notifier);
 camss_unregister_entities(camss);

 if (atomic_read(&camss->ref_count) == 0)
  camss_delete(camss);

 return 0;
}
