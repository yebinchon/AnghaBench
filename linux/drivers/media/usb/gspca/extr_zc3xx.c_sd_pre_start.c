
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int reg08; } ;
struct TYPE_2__ {int needs_full_bandwidth; } ;
struct gspca_dev {TYPE_1__ cam; } ;



__attribute__((used)) static int sd_pre_start(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;
 gspca_dev->cam.needs_full_bandwidth = (sd->reg08 >= 4) ? 1 : 0;
 return 0;
}
