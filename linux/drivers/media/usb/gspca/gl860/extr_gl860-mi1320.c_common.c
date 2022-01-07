
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int ARRAY_SIZE (int ) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int,int *) ;
 int * dat_common00 ;
 int * dat_common01 ;
 int * dat_common02 ;
 int * dat_common03 ;
 int * dat_common04 ;
 int * dat_common05 ;
 int * dat_common06 ;
 int * dat_common07 ;
 int * dat_common08 ;
 int * dat_common09 ;
 int * dat_common10 ;
 int * dat_common11 ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int keep_on_fetching_validx (struct gspca_dev*,int ,int ,int ) ;
 int tbl_common ;

__attribute__((used)) static void common(struct gspca_dev *gspca_dev)
{
 s32 n;

 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 22, dat_common00);
 ctrl_out(gspca_dev, 0x40, 1, 0x0041, 0x0000, 0, ((void*)0));
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 32, dat_common01);
 n = fetch_validx(gspca_dev, tbl_common, ARRAY_SIZE(tbl_common));
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common02);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common03);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 16, dat_common04);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common05);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 44, dat_common06);
 keep_on_fetching_validx(gspca_dev, tbl_common,
     ARRAY_SIZE(tbl_common), n);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 52, dat_common07);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common08);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 48, dat_common09);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 56, dat_common10);
 keep_on_fetching_validx(gspca_dev, tbl_common,
     ARRAY_SIZE(tbl_common), n);
 ctrl_out(gspca_dev, 0x40, 3, 0xba00, 0x0200, 40, dat_common11);
 keep_on_fetching_validx(gspca_dev, tbl_common,
     ARRAY_SIZE(tbl_common), n);
}
