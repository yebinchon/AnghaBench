
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdhci_host {int dummy; } ;
struct s3c_sdhci_platdata {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int sdhci_s3c_parse_dt(struct device *dev,
  struct sdhci_host *host, struct s3c_sdhci_platdata *pdata)
{
 return -EINVAL;
}
