
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sdhci_acpi_host {TYPE_1__* slot; } ;
struct TYPE_2__ {unsigned int flags; } ;



__attribute__((used)) static inline bool sdhci_acpi_flag(struct sdhci_acpi_host *c, unsigned int flag)
{
 return c->slot && (c->slot->flags & flag);
}
