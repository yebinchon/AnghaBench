
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ab3100 {int chip_id; int dev; } ;
struct TYPE_3__ {int setting; int abreg; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ab3100_init_settings ;
 int ab3100_set_register_interruptible (struct ab3100*,int ,int ) ;
 int ab3100_set_test_register_interruptible (struct ab3100*,int,int) ;
 int dev_warn (int ,char*) ;

__attribute__((used)) static int ab3100_setup(struct ab3100 *ab3100)
{
 int err = 0;
 int i;

 for (i = 0; i < ARRAY_SIZE(ab3100_init_settings); i++) {
  err = ab3100_set_register_interruptible(ab3100,
       ab3100_init_settings[i].abreg,
       ab3100_init_settings[i].setting);
  if (err)
   goto exit_no_setup;
 }






 if (ab3100->chip_id == 0xc4) {
  dev_warn(ab3100->dev,
    "AB3100 P1E variant detected forcing chip to 32KHz\n");
  err = ab3100_set_test_register_interruptible(ab3100,
   0x02, 0x08);
 }

 exit_no_setup:
 return err;
}
