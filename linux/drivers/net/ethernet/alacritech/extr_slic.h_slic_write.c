
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_device {scalar_t__ regs; } ;


 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static inline void slic_write(struct slic_device *sdev, unsigned int reg,
         u32 val)
{
 iowrite32(val, sdev->regs + reg);
}
