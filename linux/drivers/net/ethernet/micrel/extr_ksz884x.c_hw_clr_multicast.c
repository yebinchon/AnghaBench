
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_hw {scalar_t__ io; scalar_t__* multi_bits; } ;


 int HW_MULTICAST_SIZE ;
 scalar_t__ KS884X_MULTICAST_0_OFFSET ;
 int writeb (int ,scalar_t__) ;

__attribute__((used)) static void hw_clr_multicast(struct ksz_hw *hw)
{
 int i;

 for (i = 0; i < HW_MULTICAST_SIZE; i++) {
  hw->multi_bits[i] = 0;

  writeb(0, hw->io + KS884X_MULTICAST_0_OFFSET + i);
 }
}
