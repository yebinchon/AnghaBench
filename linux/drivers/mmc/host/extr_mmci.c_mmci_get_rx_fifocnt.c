
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmci_host {scalar_t__ base; } ;


 scalar_t__ MMCIFIFOCNT ;
 int readl (scalar_t__) ;

__attribute__((used)) static int mmci_get_rx_fifocnt(struct mmci_host *host, u32 status, int remain)
{
 return remain - (readl(host->base + MMCIFIFOCNT) << 2);
}
