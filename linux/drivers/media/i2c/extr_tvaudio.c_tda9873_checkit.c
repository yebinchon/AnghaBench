
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CHIPSTATE {int dummy; } ;


 int chip_read2 (struct CHIPSTATE*,int) ;

__attribute__((used)) static int tda9873_checkit(struct CHIPSTATE *chip)
{
 int rc;

 rc = chip_read2(chip, 254);
 if (rc < 0)
  return 0;
 return (rc & ~0x1f) == 0x80;
}
