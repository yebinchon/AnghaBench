
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxcmci_host {scalar_t__ base; } ;


 int CONFIG_PPC_MPC512x ;
 scalar_t__ IS_ENABLED (int ) ;
 int ioread32be (scalar_t__) ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 mxcmci_readl(struct mxcmci_host *host, int reg)
{
 if (IS_ENABLED(CONFIG_PPC_MPC512x))
  return ioread32be(host->base + reg);
 else
  return readl(host->base + reg);
}
