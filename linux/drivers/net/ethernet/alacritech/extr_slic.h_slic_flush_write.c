
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slic_device {scalar_t__ regs; } ;


 scalar_t__ SLIC_REG_HOSTID ;
 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline void slic_flush_write(struct slic_device *sdev)
{
 (void)ioread32(sdev->regs + SLIC_REG_HOSTID);
}
