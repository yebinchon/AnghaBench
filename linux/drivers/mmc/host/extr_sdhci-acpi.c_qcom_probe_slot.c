
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct sdhci_acpi_host {struct sdhci_host* host; } ;
struct platform_device {int dummy; } ;


 int EINVAL ;
 int IRQF_ONESHOT ;
 int IRQF_TRIGGER_HIGH ;
 struct sdhci_acpi_host* platform_get_drvdata (struct platform_device*) ;
 int platform_get_irq (struct platform_device*,int) ;
 int request_threaded_irq (int,int *,int ,int,char*,struct sdhci_host*) ;
 int* sdhci_acpi_priv (struct sdhci_acpi_host*) ;
 int sdhci_acpi_qcom_handler ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int qcom_probe_slot(struct platform_device *pdev, const char *hid,
      const char *uid)
{
 struct sdhci_acpi_host *c = platform_get_drvdata(pdev);
 struct sdhci_host *host = c->host;
 int *irq = sdhci_acpi_priv(c);

 *irq = -EINVAL;

 if (strcmp(hid, "QCOM8051"))
  return 0;

 *irq = platform_get_irq(pdev, 1);
 if (*irq < 0)
  return 0;

 return request_threaded_irq(*irq, ((void*)0), sdhci_acpi_qcom_handler,
        IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
        "sdhci_qcom", host);
}
