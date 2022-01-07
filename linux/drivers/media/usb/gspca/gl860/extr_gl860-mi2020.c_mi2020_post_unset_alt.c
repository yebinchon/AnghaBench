
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ctrl_out (struct gspca_dev*,int,int,int,int,int ,int *) ;
 int msleep (int) ;

__attribute__((used)) static void mi2020_post_unset_alt(struct gspca_dev *gspca_dev)
{
 ctrl_out(gspca_dev, 0x40, 5, 0x0000, 0x0000, 0, ((void*)0));
 msleep(40);
 ctrl_out(gspca_dev, 0x40, 1, 0x0001, 0x0000, 0, ((void*)0));
}
