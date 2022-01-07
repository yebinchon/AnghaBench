
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_acpi_host {scalar_t__ private; } ;



__attribute__((used)) static inline void *sdhci_acpi_priv(struct sdhci_acpi_host *c)
{
 return (void *)c->private;
}
