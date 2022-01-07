
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fdp1_dev {scalar_t__ regs; } ;


 int debug ;
 int dprintk (struct fdp1_dev*,char*,int ,unsigned int) ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 fdp1_read(struct fdp1_dev *fdp1, unsigned int reg)
{
 u32 value = ioread32(fdp1->regs + reg);

 if (debug >= 2)
  dprintk(fdp1, "Read 0x%08x from 0x%04x\n", value, reg);

 return value;
}
