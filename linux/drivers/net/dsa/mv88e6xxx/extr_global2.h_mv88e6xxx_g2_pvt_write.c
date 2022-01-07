
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6xxx_chip {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static inline int mv88e6xxx_g2_pvt_write(struct mv88e6xxx_chip *chip,
      int src_dev, int src_port, u16 data)
{
 return -EOPNOTSUPP;
}
