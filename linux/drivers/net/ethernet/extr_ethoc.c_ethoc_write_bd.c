
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethoc_bd {int addr; int stat; } ;
struct ethoc {int dummy; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ ETHOC_BD_BASE ;
 int ethoc_write (struct ethoc*,scalar_t__,int ) ;

__attribute__((used)) static inline void ethoc_write_bd(struct ethoc *dev, int index,
  const struct ethoc_bd *bd)
{
 loff_t offset = ETHOC_BD_BASE + (index * sizeof(struct ethoc_bd));
 ethoc_write(dev, offset + 0, bd->stat);
 ethoc_write(dev, offset + 4, bd->addr);
}
