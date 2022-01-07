
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_device {scalar_t__ regs; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 slic_read(struct slic_device *sdev, unsigned int reg)
{
 return ioread32(sdev->regs + reg);
}
