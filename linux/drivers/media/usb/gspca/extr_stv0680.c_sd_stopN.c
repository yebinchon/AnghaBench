
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int EIO ;
 int stv0680_handle_error (struct gspca_dev*,int ) ;
 int stv_sndctrl (struct gspca_dev*,int,int,int,int) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{

 if (stv_sndctrl(gspca_dev, 1, 0x04, 0x0000, 0x0) != 0x0)
  stv0680_handle_error(gspca_dev, -EIO);
}
