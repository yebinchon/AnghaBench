
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sd {scalar_t__ bridge; } ;
struct gspca_dev {int dummy; } ;
typedef int s32 ;


 scalar_t__ BRIDGE_SPCA536 ;
 int reg_w_riv (struct gspca_dev*,int,int,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{
 struct sd *sd = (struct sd *) gspca_dev;
 u16 reg;

 reg = sd->bridge == BRIDGE_SPCA536 ? 0x20f0 : 0x21a7;
 reg_w_riv(gspca_dev, 0x00, reg, val);
}
