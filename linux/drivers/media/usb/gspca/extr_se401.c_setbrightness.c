
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int s32 ;


 int SE401_REQ_SET_BRT ;
 int se401_write_req (struct gspca_dev*,int ,int ,int ) ;

__attribute__((used)) static void setbrightness(struct gspca_dev *gspca_dev, s32 val)
{

 se401_write_req(gspca_dev, SE401_REQ_SET_BRT, val, 0);
}
