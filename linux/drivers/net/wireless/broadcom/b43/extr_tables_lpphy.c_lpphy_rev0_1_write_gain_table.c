
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct lpphy_tx_gain_table_entry {int pad; int pga; int gm; int dac; int bb_mult; } ;
struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;


 int B43_LPTAB32 (int,int) ;
 int B43_WARN_ON (int) ;
 int b43_lptab_write (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_rev0_1_write_gain_table(struct b43_wldev *dev, int offset,
    struct lpphy_tx_gain_table_entry data)
{
 u32 tmp;

 B43_WARN_ON(dev->phy.rev >= 2);

 tmp = data.pad << 11;
 tmp |= data.pga << 7;
 tmp |= data.gm << 4;
 tmp |= data.dac;
 b43_lptab_write(dev, B43_LPTAB32(10, 0xC0 + offset), tmp);
 tmp = data.bb_mult << 20;
 b43_lptab_write(dev, B43_LPTAB32(10, 0x140 + offset), tmp);
}
