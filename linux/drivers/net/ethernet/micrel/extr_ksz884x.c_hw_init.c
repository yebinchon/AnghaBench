
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_hw {int features; scalar_t__ io; } ;


 int BUS_SPEED_125_MHZ ;
 int HALF_DUPLEX_SIGNAL_BUG ;
 scalar_t__ KS884X_BUS_CTRL_OFFSET ;
 int KS884X_CHIP_ID_MASK_41 ;
 scalar_t__ KS884X_CHIP_ID_OFFSET ;
 int KS884X_REVISION_MASK ;
 int KS884X_REVISION_SHIFT ;
 int REG_CHIP_ID_41 ;
 int REG_CHIP_ID_42 ;
 int SMALL_PACKET_TX_BUG ;
 int readw (scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static int hw_init(struct ksz_hw *hw)
{
 int rc = 0;
 u16 data;
 u16 revision;


 writew(BUS_SPEED_125_MHZ, hw->io + KS884X_BUS_CTRL_OFFSET);


 data = readw(hw->io + KS884X_CHIP_ID_OFFSET);

 revision = (data & KS884X_REVISION_MASK) >> KS884X_REVISION_SHIFT;
 data &= KS884X_CHIP_ID_MASK_41;
 if (REG_CHIP_ID_41 == data)
  rc = 1;
 else if (REG_CHIP_ID_42 == data)
  rc = 2;
 else
  return 0;


 if (revision <= 1) {
  hw->features |= SMALL_PACKET_TX_BUG;
  if (1 == rc)
   hw->features |= HALF_DUPLEX_SIGNAL_BUG;
 }
 return rc;
}
