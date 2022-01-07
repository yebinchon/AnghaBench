
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nmodes; int cam_mode; } ;
struct TYPE_4__ {TYPE_1__ cam; } ;
struct sd {scalar_t__ bridge; TYPE_2__ gspca_dev; } ;


 int ARRAY_SIZE (int ) ;
 scalar_t__ BRIDGE_ST6422 ;
 int ENODEV ;
 int pr_info (char*) ;
 int st6422_mode ;

__attribute__((used)) static int st6422_probe(struct sd *sd)
{
 if (sd->bridge != BRIDGE_ST6422)
  return -ENODEV;

 pr_info("st6422 sensor detected\n");

 sd->gspca_dev.cam.cam_mode = st6422_mode;
 sd->gspca_dev.cam.nmodes = ARRAY_SIZE(st6422_mode);
 return 0;
}
