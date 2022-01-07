
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int read_phy_reg (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,int ) ;

__attribute__((used)) static void wlc_phy_clip_det_nphy(struct brcms_phy *pi, u8 write, u16 *vals)
{

 if (write == 0) {
  vals[0] = read_phy_reg(pi, 0x2c);
  vals[1] = read_phy_reg(pi, 0x42);
 } else {
  write_phy_reg(pi, 0x2c, vals[0]);
  write_phy_reg(pi, 0x42, vals[1]);
 }
}
