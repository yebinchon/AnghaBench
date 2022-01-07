
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;
typedef int __s32 ;


 int D_CONF ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int) ;
 int hdcs_set_gains (struct sd*,int) ;

__attribute__((used)) static int hdcs_set_gain(struct gspca_dev *gspca_dev, __s32 val)
{
 gspca_dbg(gspca_dev, D_CONF, "Writing gain %d\n", val);
 return hdcs_set_gains((struct sd *) gspca_dev,
          val & 0xff);
}
