
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct octeon_device {scalar_t__ chip; } ;
struct octeon_cn6xxx {int intr_enb_reg64; } ;


 int writeq (int ,int ) ;

void lio_cn6xxx_disable_interrupt(struct octeon_device *oct,
      u8 unused __attribute__((unused)))
{
 struct octeon_cn6xxx *cn6xxx = (struct octeon_cn6xxx *)oct->chip;


 writeq(0, cn6xxx->intr_enb_reg64);
}
