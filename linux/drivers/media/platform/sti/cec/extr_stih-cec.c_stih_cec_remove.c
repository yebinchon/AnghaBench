
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stih_cec {int adap; int notifier; } ;
struct platform_device {int dummy; } ;


 int cec_notifier_cec_adap_unregister (int ) ;
 int cec_unregister_adapter (int ) ;
 struct stih_cec* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int stih_cec_remove(struct platform_device *pdev)
{
 struct stih_cec *cec = platform_get_drvdata(pdev);

 cec_notifier_cec_adap_unregister(cec->notifier);
 cec_unregister_adapter(cec->adap);

 return 0;
}
