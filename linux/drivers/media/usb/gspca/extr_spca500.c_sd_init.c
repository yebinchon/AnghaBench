
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ subtype; } ;
struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 scalar_t__ LogitechClickSmart310 ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int spca500_clksmart310_init (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;


 gspca_dbg(gspca_dev, D_STREAM, "SPCA500 init\n");
 if (sd->subtype == LogitechClickSmart310)
  spca500_clksmart310_init(gspca_dev);


 gspca_dbg(gspca_dev, D_STREAM, "SPCA500 init done\n");
 return 0;
}
