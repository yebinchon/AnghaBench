
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {int * datacs; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int IORESOURCE_MEM ;
 scalar_t__ SMC_CAN_USE_DATACS ;
 int SMC_DATA_EXTENT ;
 int iounmap (int *) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void smc_release_datacs(struct platform_device *pdev, struct net_device *ndev)
{
 if (SMC_CAN_USE_DATACS) {
  struct smc_local *lp = netdev_priv(ndev);
  struct resource * res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "smc91x-data32");

  if (lp->datacs)
   iounmap(lp->datacs);

  lp->datacs = ((void*)0);

  if (res)
   release_mem_region(res->start, SMC_DATA_EXTENT);
 }
}
