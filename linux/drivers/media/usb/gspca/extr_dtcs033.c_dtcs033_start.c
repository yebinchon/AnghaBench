
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int dtcs033_start_reqs ;
 int reg_reqs (struct gspca_dev*,int ,int ) ;

__attribute__((used)) static int dtcs033_start(struct gspca_dev *gspca_dev)
{
 return reg_reqs(gspca_dev, dtcs033_start_reqs,
  ARRAY_SIZE(dtcs033_start_reqs));
}
