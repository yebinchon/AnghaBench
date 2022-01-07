
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; } ;
struct gspca_dev {TYPE_1__ pixfmt; } ;
struct cmd {int member_0; int const member_1; } ;


 int ARRAY_SIZE (struct cmd const*) ;
 int D_STREAM ;
 int configure_wh (struct gspca_dev*) ;
 int gspca_dbg (struct gspca_dev*,int ,char*,...) ;
 int reg_w (struct gspca_dev*,int,int const) ;
 int reg_w_buf (struct gspca_dev*,struct cmd const*,int ) ;

__attribute__((used)) static void configure_encrypted(struct gspca_dev *gspca_dev)
{
 static const struct cmd reg_init_begin[] = {
  {0x0100, 130},
  {0x0000, 136},
  {0x0100, 137},
  {0x0004, 129},
  {0x0001, 128},
  {0x0008, 135},
  {0x0001, 134},
  {0x0004, 132},
  {0x0040, 133},
  {0x0000, 137},
  {0x0100, 137},
 };
 static const struct cmd reg_init_end[] = {
  {0x0000, 137},
  {0x0301, 0x31AE},
  {0x0805, 0x3064},
  {0x0071, 0x3170},
  {0x10DE, 131},
  {0x0000, 136},
  {0x0010, 133},
  {0x0100, 136},
 };

 gspca_dbg(gspca_dev, D_STREAM, "Encrypted begin, w = %u\n\n",
    gspca_dev->pixfmt.width);
 reg_w_buf(gspca_dev, reg_init_begin, ARRAY_SIZE(reg_init_begin));
 configure_wh(gspca_dev);
 reg_w_buf(gspca_dev, reg_init_end, ARRAY_SIZE(reg_init_end));
 reg_w(gspca_dev, 0x0100, 137);
 reg_w(gspca_dev, 0x0000, 137);

 gspca_dbg(gspca_dev, D_STREAM, "Encrypted end\n\n");
}
