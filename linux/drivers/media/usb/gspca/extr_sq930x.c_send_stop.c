
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int SQ930_CTRL_CAP_STOP ;
 int reg_w (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static void send_stop(struct gspca_dev *gspca_dev)
{
 reg_w(gspca_dev, SQ930_CTRL_CAP_STOP, 0);
}
