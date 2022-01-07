
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int cx11646_fw (struct gspca_dev*) ;
 int cx11646_init1 (struct gspca_dev*) ;
 int cx11646_initsize (struct gspca_dev*) ;
 int cx11646_jpegInit (struct gspca_dev*) ;
 int cx_sensor (struct gspca_dev*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 cx11646_init1(gspca_dev);
 cx11646_initsize(gspca_dev);
 cx11646_fw(gspca_dev);
 cx_sensor(gspca_dev);
 cx11646_jpegInit(gspca_dev);
 return 0;
}
