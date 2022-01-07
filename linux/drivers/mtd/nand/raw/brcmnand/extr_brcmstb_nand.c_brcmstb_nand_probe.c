
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int brcmnand_probe (struct platform_device*,int *) ;

__attribute__((used)) static int brcmstb_nand_probe(struct platform_device *pdev)
{
 return brcmnand_probe(pdev, ((void*)0));
}
