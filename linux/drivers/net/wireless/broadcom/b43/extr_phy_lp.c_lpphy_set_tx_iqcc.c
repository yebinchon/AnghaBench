
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPTAB16 (int ,int) ;
 int b43_lptab_write_bulk (struct b43_wldev*,int ,int,int *) ;

__attribute__((used)) static void lpphy_set_tx_iqcc(struct b43_wldev *dev, u16 a, u16 b)
{
 u16 tmp[2];

 tmp[0] = a;
 tmp[1] = b;
 b43_lptab_write_bulk(dev, B43_LPTAB16(0, 80), 2, tmp);
}
