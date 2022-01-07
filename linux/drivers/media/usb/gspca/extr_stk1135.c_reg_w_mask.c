
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int reg_r (struct gspca_dev*,int ) ;
 int reg_w (struct gspca_dev*,int ,int) ;

__attribute__((used)) static void reg_w_mask(struct gspca_dev *gspca_dev, u16 index, u8 val, u8 mask)
{
 val = (reg_r(gspca_dev, index) & ~mask) | (val & mask);
 reg_w(gspca_dev, index, val);
}
