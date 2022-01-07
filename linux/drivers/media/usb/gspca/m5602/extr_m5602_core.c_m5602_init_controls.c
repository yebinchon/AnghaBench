
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {TYPE_1__* sensor; } ;
struct gspca_dev {int dummy; } ;
struct TYPE_2__ {int (* init_controls ) (struct sd*) ;} ;


 int stub1 (struct sd*) ;

__attribute__((used)) static int m5602_init_controls(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (!sd->sensor->init_controls)
  return 0;

 return sd->sensor->init_controls(sd);
}
