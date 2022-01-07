
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct jpu {scalar_t__ regs; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void jpu_write(struct jpu *jpu, u32 val, unsigned int reg)
{
 iowrite32(val, jpu->regs + reg);
}
