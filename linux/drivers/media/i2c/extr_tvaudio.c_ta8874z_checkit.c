
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int chip_read (struct CHIPSTATE*) ;

__attribute__((used)) static int ta8874z_checkit(struct CHIPSTATE *chip)
{
 int rc;

 rc = chip_read(chip);
 if (rc < 0)
  return rc;

 return ((rc & 0x1f) == 0x1f) ? 1 : 0;
}
