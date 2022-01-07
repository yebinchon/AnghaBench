
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int do_dma; } ;



__attribute__((used)) static inline int mxcmci_use_dma(struct mxcmci_host *host)
{
 return host->do_dma;
}
