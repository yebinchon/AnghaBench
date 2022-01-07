
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ctrl_out (struct gspca_dev*,int,int,int,int,int ,int *) ;

__attribute__((used)) static void ov9655_post_unset_alt(struct gspca_dev *gspca_dev)
{
 ctrl_out(gspca_dev, 0x40, 5, 0x0000, 0x0000, 0, ((void*)0));
 ctrl_out(gspca_dev, 0x40, 1, 0x0061, 0x0000, 0, ((void*)0));
}
