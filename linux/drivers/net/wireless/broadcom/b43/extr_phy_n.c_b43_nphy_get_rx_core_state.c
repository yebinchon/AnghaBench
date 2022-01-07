
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b43_wldev {int dummy; } ;


 int B43_NPHY_RFSEQCA ;
 int B43_NPHY_RFSEQCA_RXEN ;
 int B43_NPHY_RFSEQCA_RXEN_SHIFT ;
 int b43_phy_read (struct b43_wldev*,int ) ;

__attribute__((used)) static u8 b43_nphy_get_rx_core_state(struct b43_wldev *dev)
{
 return (b43_phy_read(dev, B43_NPHY_RFSEQCA) & B43_NPHY_RFSEQCA_RXEN) >>
  B43_NPHY_RFSEQCA_RXEN_SHIFT;
}
