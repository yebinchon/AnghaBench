
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int dev; scalar_t__ iobase; } ;


 int dev_vdbg (int ,char*,unsigned int,unsigned int) ;
 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int sdricoh_readl(struct sdricoh_host *host,
      unsigned int reg)
{
 unsigned int value = readl(host->iobase + reg);
 dev_vdbg(host->dev, "rl %x 0x%x\n", reg, value);
 return value;
}
