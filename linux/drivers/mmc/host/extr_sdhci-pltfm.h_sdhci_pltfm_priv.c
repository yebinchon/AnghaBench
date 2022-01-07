
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_pltfm_host {void* private; } ;



__attribute__((used)) static inline void *sdhci_pltfm_priv(struct sdhci_pltfm_host *host)
{
 return host->private;
}
