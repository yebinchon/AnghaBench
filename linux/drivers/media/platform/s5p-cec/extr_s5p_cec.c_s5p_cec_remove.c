
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_cec_dev {int adap; int notifier; } ;
struct platform_device {int dev; } ;


 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_unregister_adapter (int ) ;
 struct s5p_cec_dev* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_disable (int *) ;

__attribute__((used)) static int s5p_cec_remove(struct platform_device *pdev)
{
 struct s5p_cec_dev *cec = platform_get_drvdata(pdev);

 cec_notifier_cec_adap_unregister(cec->notifier);
 cec_unregister_adapter(cec->adap);
 pm_runtime_disable(&pdev->dev);
 return 0;
}
