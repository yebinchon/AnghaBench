
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tmComResBusDescr {int dummy; } ;
struct TYPE_2__ {int ResponseRead; int ResponseWrite; int CommandRead; int CommandWrite; int ResponseRing; int CommandRing; } ;
struct saa7164_dev {TYPE_1__ busdesc; } ;


 int dprintk (int,char*,TYPE_1__*,...) ;

__attribute__((used)) static void saa7164_dump_busdesc(struct saa7164_dev *dev)
{
 dprintk(1, "@0x%p busdesc sizeof(struct tmComResBusDescr) = %d bytes\n",
  &dev->busdesc, (u32)sizeof(struct tmComResBusDescr));

 dprintk(1, " .CommandRing   = 0x%016Lx\n", dev->busdesc.CommandRing);
 dprintk(1, " .ResponseRing  = 0x%016Lx\n", dev->busdesc.ResponseRing);
 dprintk(1, " .CommandWrite  = 0x%x\n", dev->busdesc.CommandWrite);
 dprintk(1, " .CommandRead   = 0x%x\n", dev->busdesc.CommandRead);
 dprintk(1, " .ResponseWrite = 0x%x\n", dev->busdesc.ResponseWrite);
 dprintk(1, " .ResponseRead  = 0x%x\n", dev->busdesc.ResponseRead);
}
