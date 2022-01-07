
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int ,int const*,int) ;

__attribute__((used)) static void reg_w1(struct gspca_dev *gspca_dev, u16 reg, const u8 value)
{
 reg_w(gspca_dev, reg, &value, 1);
}
