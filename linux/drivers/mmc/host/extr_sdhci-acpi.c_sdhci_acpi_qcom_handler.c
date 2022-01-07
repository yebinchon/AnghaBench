
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int VENDOR_SPECIFIC_PWRCTL_CLEAR_REG ;
 int VENDOR_SPECIFIC_PWRCTL_CTL_REG ;
 int sdhci_writel (struct sdhci_host*,int,int ) ;

__attribute__((used)) static irqreturn_t sdhci_acpi_qcom_handler(int irq, void *ptr)
{
 struct sdhci_host *host = ptr;

 sdhci_writel(host, 0x3, VENDOR_SPECIFIC_PWRCTL_CLEAR_REG);
 sdhci_writel(host, 0x1, VENDOR_SPECIFIC_PWRCTL_CTL_REG);

 return IRQ_HANDLED;
}
