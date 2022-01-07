
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_s3c {int dummy; } ;
struct sdhci_host {int dummy; } ;


 struct sdhci_s3c* sdhci_priv (struct sdhci_host*) ;

__attribute__((used)) static inline struct sdhci_s3c *to_s3c(struct sdhci_host *host)
{
 return sdhci_priv(host);
}
