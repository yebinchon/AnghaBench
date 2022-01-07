
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apds990x_chip {int lux_thres_hi; int lux_thres_lo; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int APDS990X_AIHTL ;
 int APDS990X_AILTL ;
 int apds990x_lux_to_threshold (struct apds990x_chip*,int ) ;
 int apds990x_write_word (struct apds990x_chip*,int ,int ) ;
 scalar_t__ pm_runtime_suspended (int *) ;

__attribute__((used)) static int apds990x_refresh_athres(struct apds990x_chip *chip)
{
 int ret;

 if (pm_runtime_suspended(&chip->client->dev))
  return 0;

 ret = apds990x_write_word(chip, APDS990X_AILTL,
   apds990x_lux_to_threshold(chip, chip->lux_thres_lo));
 ret |= apds990x_write_word(chip, APDS990X_AIHTL,
   apds990x_lux_to_threshold(chip, chip->lux_thres_hi));

 return ret;
}
