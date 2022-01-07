
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {scalar_t__ sw_addr; } ;


 int mv88e6xxx_smi_direct_read (struct mv88e6xxx_chip*,scalar_t__,int,int *) ;

__attribute__((used)) static int mv88e6xxx_smi_dual_direct_read(struct mv88e6xxx_chip *chip,
       int dev, int reg, u16 *data)
{
 return mv88e6xxx_smi_direct_read(chip, chip->sw_addr + dev, reg, data);
}
