
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realtek_pci_ms {int msh; } ;
struct platform_device {int dummy; } ;


 int memstick_detect_change (int ) ;
 struct realtek_pci_ms* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static void rtsx_pci_ms_card_event(struct platform_device *pdev)
{
 struct realtek_pci_ms *host = platform_get_drvdata(pdev);

 memstick_detect_change(host->msh);
}
