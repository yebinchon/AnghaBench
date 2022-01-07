
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {int dummy; } ;
struct gspca_dev {int dummy; } ;


 int D_STREAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;

__attribute__((used)) static int st6422_stop(struct sd *sd)
{
 struct gspca_dev *gspca_dev = (struct gspca_dev *)sd;

 gspca_dbg(gspca_dev, D_STREAM, "Halting stream\n");

 return 0;
}
