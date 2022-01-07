
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smc_local {int datacs; } ;
struct resource {int start; } ;
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;


 int CARDNAME ;
 int IORESOURCE_MEM ;
 scalar_t__ SMC_CAN_USE_DATACS ;
 int SMC_DATA_EXTENT ;
 int ioremap (int ,int ) ;
 int netdev_info (struct net_device*,char*,int ) ;
 struct smc_local* netdev_priv (struct net_device*) ;
 struct resource* platform_get_resource_byname (struct platform_device*,int ,char*) ;
 int request_mem_region (int ,int ,int ) ;

__attribute__((used)) static inline void smc_request_datacs(struct platform_device *pdev, struct net_device *ndev)
{
 if (SMC_CAN_USE_DATACS) {
  struct resource * res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "smc91x-data32");
  struct smc_local *lp = netdev_priv(ndev);

  if (!res)
   return;

  if(!request_mem_region(res->start, SMC_DATA_EXTENT, CARDNAME)) {
   netdev_info(ndev, "%s: failed to request datacs memory region.\n",
        CARDNAME);
   return;
  }

  lp->datacs = ioremap(res->start, SMC_DATA_EXTENT);
 }
}
