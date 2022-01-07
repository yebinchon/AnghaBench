
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int model; scalar_t__ sof_read; } ;
struct gspca_dev {TYPE_1__** urb; int dev; } ;
struct TYPE_2__ {int pipe; } ;
 int cit_write_reg (struct gspca_dev*,int,int) ;
 int usb_clear_halt (int ,int ) ;

__attribute__((used)) static int cit_restart_stream(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 switch (sd->model) {
 case 132:
 case 131:
  cit_write_reg(gspca_dev, 0x0001, 0x0114);

 case 130:
 case 128:
  cit_write_reg(gspca_dev, 0x00c0, 0x010c);
  usb_clear_halt(gspca_dev->dev, gspca_dev->urb[0]->pipe);
  break;
 case 129:
 case 133:
  cit_write_reg(gspca_dev, 0x0001, 0x0114);
  cit_write_reg(gspca_dev, 0x00c0, 0x010c);
  usb_clear_halt(gspca_dev->dev, gspca_dev->urb[0]->pipe);

  cit_write_reg(gspca_dev, 0x0001, 0x0113);
  break;
 }

 sd->sof_read = 0;

 return 0;
}
