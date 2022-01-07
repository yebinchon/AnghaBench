
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;


 int __sdhci_add_host (struct sdhci_host*) ;
 int sdhci_cleanup_host (struct sdhci_host*) ;
 int sdhci_setup_host (struct sdhci_host*) ;

int sdhci_add_host(struct sdhci_host *host)
{
 int ret;

 ret = sdhci_setup_host(host);
 if (ret)
  return ret;

 ret = __sdhci_add_host(host);
 if (ret)
  goto cleanup;

 return 0;

cleanup:
 sdhci_cleanup_host(host);

 return ret;
}
