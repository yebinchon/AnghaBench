
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinfc_host {scalar_t__ iobase; } ;


 int writel (unsigned int,scalar_t__) ;

__attribute__((used)) static inline void hinfc_write(struct hinfc_host *host, unsigned int value,
          unsigned int reg)
{
 writel(value, host->iobase + reg);
}
