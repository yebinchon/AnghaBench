
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ctrl_out (struct gspca_dev*,int,int,int,int,int ,int *) ;
 int fetch_validx (struct gspca_dev*,int ,int ) ;
 int msleep (int) ;
 int tbl_post_unset_alt ;

__attribute__((used)) static void ov2640_post_unset_alt(struct gspca_dev *gspca_dev)
{
 ctrl_out(gspca_dev, 0x40, 5, 0x0000, 0x0000, 0, ((void*)0));
 msleep(20);
 fetch_validx(gspca_dev, tbl_post_unset_alt,
   ARRAY_SIZE(tbl_post_unset_alt));
}
