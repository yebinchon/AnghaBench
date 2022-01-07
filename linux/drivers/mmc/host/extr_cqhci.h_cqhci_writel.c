
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cqhci_host {scalar_t__ mmio; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_l ) (struct cqhci_host*,int ,int) ;} ;


 int stub1 (struct cqhci_host*,int ,int) ;
 scalar_t__ unlikely (int (*) (struct cqhci_host*,int ,int)) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static inline void cqhci_writel(struct cqhci_host *host, u32 val, int reg)
{
 if (unlikely(host->ops->write_l))
  host->ops->write_l(host, val, reg);
 else
  writel_relaxed(val, host->mmio + reg);
}
