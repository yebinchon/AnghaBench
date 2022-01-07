
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mxcmci_host {scalar_t__ base; } ;


 int CONFIG_PPC_MPC512x ;
 scalar_t__ IS_ENABLED (int ) ;
 int iowrite32be (int ,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void mxcmci_writew(struct mxcmci_host *host, u16 val, int reg)
{
 if (IS_ENABLED(CONFIG_PPC_MPC512x))
  iowrite32be(val, host->base + reg);
 else
  writew(val, host->base + reg);
}
