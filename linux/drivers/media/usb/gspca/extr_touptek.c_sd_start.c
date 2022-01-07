
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ this_f; } ;
struct gspca_dev {int dummy; } ;


 int configure (struct gspca_dev*) ;
 int gspca_err (struct gspca_dev*,char*) ;

__attribute__((used)) static int sd_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 int rc;

 sd->this_f = 0;

 rc = configure(gspca_dev);
 if (rc < 0) {
  gspca_err(gspca_dev, "Failed configure\n");
  return rc;
 }


 return 0;
}
