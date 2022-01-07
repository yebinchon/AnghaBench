
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int nr_sih_modules ;
 int sih_modules ;
 int sih_modules_twl4030 ;
 int sih_modules_twl5031 ;
 int strcmp (char const*,char*) ;

int twl4030_init_chip_irq(const char *chip)
{
 if (!strcmp(chip, "twl5031")) {
  sih_modules = sih_modules_twl5031;
  nr_sih_modules = ARRAY_SIZE(sih_modules_twl5031);
 } else {
  sih_modules = sih_modules_twl4030;
  nr_sih_modules = ARRAY_SIZE(sih_modules_twl4030);
 }

 return 0;
}
