
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdricoh_host {int dev; scalar_t__ iobase; } ;


 int dev_vdbg (int ,char*,unsigned int,unsigned short) ;
 int writew (unsigned short,scalar_t__) ;

__attribute__((used)) static inline void sdricoh_writew(struct sdricoh_host *host, unsigned int reg,
      unsigned short value)
{
 writew(value, host->iobase + reg);
 dev_vdbg(host->dev, "ww %x 0x%x\n", reg, value);
}
