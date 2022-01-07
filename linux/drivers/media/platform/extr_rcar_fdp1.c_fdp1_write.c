
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fdp1_dev {scalar_t__ regs; } ;


 int debug ;
 int dprintk (struct fdp1_dev*,char*,int ,unsigned int) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fdp1_write(struct fdp1_dev *fdp1, u32 val, unsigned int reg)
{
 if (debug >= 2)
  dprintk(fdp1, "Write 0x%08x to 0x%04x\n", val, reg);

 iowrite32(val, fdp1->regs + reg);
}
