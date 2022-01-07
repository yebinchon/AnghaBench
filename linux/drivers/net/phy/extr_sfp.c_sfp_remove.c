
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {int sfp_bus; } ;
struct platform_device {int dummy; } ;


 struct sfp* platform_get_drvdata (struct platform_device*) ;
 int sfp_unregister_socket (int ) ;

__attribute__((used)) static int sfp_remove(struct platform_device *pdev)
{
 struct sfp *sfp = platform_get_drvdata(pdev);

 sfp_unregister_socket(sfp->sfp_bus);

 return 0;
}
