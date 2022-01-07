
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef size_t s32 ;


 int D_CONF ;
 int * gamma_table ;
 int gspca_dbg (struct gspca_dev*,int ,char*,size_t) ;
 int reg_w_ixbuf (struct gspca_dev*,int,int ,int) ;

__attribute__((used)) static void setgamma(struct gspca_dev *gspca_dev, s32 val)
{
 gspca_dbg(gspca_dev, D_CONF, "Gamma: %d\n", val);
 reg_w_ixbuf(gspca_dev, 0x90,
  gamma_table[val], sizeof gamma_table[0]);
}
