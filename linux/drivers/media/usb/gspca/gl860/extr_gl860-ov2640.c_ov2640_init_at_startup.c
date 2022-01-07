
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int c51 ;
 int c61 ;
 int common (struct gspca_dev*) ;
 int ctrl_in (struct gspca_dev*,int,int,int,int,int,int ) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int,int *) ;
 int * dat_init1 ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int tbl_init_at_startup ;

__attribute__((used)) static int ov2640_init_at_startup(struct gspca_dev *gspca_dev)
{
 fetch_validx(gspca_dev, tbl_init_at_startup,
   ARRAY_SIZE(tbl_init_at_startup));

 ctrl_out(gspca_dev, 0x40, 3, 0x0000, 0x0200, 12, dat_init1);

 common(gspca_dev);

 ctrl_in(gspca_dev, 0xc0, 2, 0x0000, 0x0006, 1, c61);

 ctrl_out(gspca_dev, 0x40, 1, 0x00ef, 0x0006, 0, ((void*)0));

 ctrl_in(gspca_dev, 0xc0, 2, 0x0000, 0x0000, 1, c51);

 ctrl_out(gspca_dev, 0x40, 1, 0x0051, 0x0000, 0, ((void*)0));


 return 0;
}
