
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 unsigned int STMFX_REG_SYS_CTRL ;

__attribute__((used)) static bool stmfx_reg_writeable(struct device *dev, unsigned int reg)
{
 return (reg >= STMFX_REG_SYS_CTRL);
}
