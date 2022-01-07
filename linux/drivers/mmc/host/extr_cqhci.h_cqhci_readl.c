
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cqhci_host {scalar_t__ mmio; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* read_l ) (struct cqhci_host*,int) ;} ;


 int readl_relaxed (scalar_t__) ;
 int stub1 (struct cqhci_host*,int) ;
 scalar_t__ unlikely (int (*) (struct cqhci_host*,int)) ;

__attribute__((used)) static inline u32 cqhci_readl(struct cqhci_host *host, int reg)
{
 if (unlikely(host->ops->read_l))
  return host->ops->read_l(host, reg);
 else
  return readl_relaxed(host->mmio + reg);
}
