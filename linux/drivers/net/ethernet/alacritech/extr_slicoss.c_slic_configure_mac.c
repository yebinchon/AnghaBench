
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_device {scalar_t__ speed; scalar_t__ duplex; } ;


 scalar_t__ DUPLEX_FULL ;
 int SLIC_GMCR_FULLD ;
 int SLIC_GMCR_GAPBB_100 ;
 int SLIC_GMCR_GAPBB_1000 ;
 int SLIC_GMCR_GAPBB_SHIFT ;
 int SLIC_GMCR_GAPR1_100 ;
 int SLIC_GMCR_GAPR1_1000 ;
 int SLIC_GMCR_GAPR1_SHIFT ;
 int SLIC_GMCR_GAPR2_100 ;
 int SLIC_GMCR_GAPR2_1000 ;
 int SLIC_GMCR_GAPR2_SHIFT ;
 int SLIC_GMCR_GBIT ;
 int SLIC_REG_WMCFG ;
 scalar_t__ SPEED_1000 ;
 int slic_write (struct slic_device*,int ,int) ;

__attribute__((used)) static void slic_configure_mac(struct slic_device *sdev)
{
 u32 val;

 if (sdev->speed == SPEED_1000) {
  val = SLIC_GMCR_GAPBB_1000 << SLIC_GMCR_GAPBB_SHIFT |
        SLIC_GMCR_GAPR1_1000 << SLIC_GMCR_GAPR1_SHIFT |
        SLIC_GMCR_GAPR2_1000 << SLIC_GMCR_GAPR2_SHIFT |
        SLIC_GMCR_GBIT;
 } else {
  val = SLIC_GMCR_GAPBB_100 << SLIC_GMCR_GAPBB_SHIFT |
        SLIC_GMCR_GAPR1_100 << SLIC_GMCR_GAPR1_SHIFT |
        SLIC_GMCR_GAPR2_100 << SLIC_GMCR_GAPR2_SHIFT;
 }

 if (sdev->duplex == DUPLEX_FULL)
  val |= SLIC_GMCR_FULLD;

 slic_write(sdev, SLIC_REG_WMCFG, val);
}
