
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct cec_gpio {int adap; } ;


 int cec_unregister_adapter (int ) ;
 struct cec_gpio* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int cec_gpio_remove(struct platform_device *pdev)
{
 struct cec_gpio *cec = platform_get_drvdata(pdev);

 cec_unregister_adapter(cec->adap);
 return 0;
}
