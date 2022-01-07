
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct bgmac {int dummy; } ;


 int bgmac_enet_remove (struct bgmac*) ;
 struct bgmac* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int bgmac_remove(struct platform_device *pdev)
{
 struct bgmac *bgmac = platform_get_drvdata(pdev);

 bgmac_enet_remove(bgmac);

 return 0;
}
