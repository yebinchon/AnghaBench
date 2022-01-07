
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stfsm {int mtd; } ;
struct platform_device {int dummy; } ;


 int mtd_device_unregister (int *) ;
 struct stfsm* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int stfsm_remove(struct platform_device *pdev)
{
 struct stfsm *fsm = platform_get_drvdata(pdev);

 return mtd_device_unregister(&fsm->mtd);
}
