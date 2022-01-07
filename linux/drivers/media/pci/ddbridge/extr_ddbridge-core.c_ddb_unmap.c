
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ddb {scalar_t__ regs; } ;


 int iounmap (scalar_t__) ;
 int vfree (struct ddb*) ;

void ddb_unmap(struct ddb *dev)
{
 if (dev->regs)
  iounmap(dev->regs);
 vfree(dev);
}
