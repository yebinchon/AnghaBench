
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int D_PROBE ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;

__attribute__((used)) static int sd_init(struct gspca_dev *gspca_dev)
{
 gspca_dbg(gspca_dev, D_PROBE, "Kinect Camera device.\n");

 return 0;
}
