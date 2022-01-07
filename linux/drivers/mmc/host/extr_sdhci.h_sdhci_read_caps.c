
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int __sdhci_read_caps (struct sdhci_host*,int *,int *,int *) ;

__attribute__((used)) static inline void sdhci_read_caps(struct sdhci_host *host)
{
 __sdhci_read_caps(host, ((void*)0), ((void*)0), ((void*)0));
}
