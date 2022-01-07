
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct gemini_ethernet {int initialized; } ;


 int geth_cleanup_freeq (struct gemini_ethernet*) ;
 struct gemini_ethernet* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int gemini_ethernet_remove(struct platform_device *pdev)
{
 struct gemini_ethernet *geth = platform_get_drvdata(pdev);

 geth_cleanup_freeq(geth);
 geth->initialized = 0;

 return 0;
}
