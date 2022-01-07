
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hinfc_host {scalar_t__ iobase; } ;


 unsigned int readl (scalar_t__) ;

__attribute__((used)) static inline unsigned int hinfc_read(struct hinfc_host *host, unsigned int reg)
{
 return readl(host->iobase + reg);
}
