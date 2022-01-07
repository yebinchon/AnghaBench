
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int snd_val (struct gspca_dev*,int,int) ;

__attribute__((used)) static void set_par(struct gspca_dev *gspca_dev,
     int parval)
{
 snd_val(gspca_dev, 0x003f08, parval);
}
