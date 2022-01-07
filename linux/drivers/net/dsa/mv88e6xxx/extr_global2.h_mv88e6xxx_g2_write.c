
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mv88e6xxx_g2_write(struct mv88e6xxx_chip *chip, int reg, u16 val)
{
 return -EOPNOTSUPP;
}
