
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct gspca_dev {int dummy; } ;


 int reg_w (struct gspca_dev*,int,int const,int ) ;

__attribute__((used)) static void put_tab_to_reg(struct gspca_dev *gspca_dev,
   const u8 *tab, u8 tabsize, u16 addr)
{
 int j;
 u16 ad = addr;

 for (j = 0; j < tabsize; j++)
  reg_w(gspca_dev, 0xa0, tab[j], ad++);
}
