
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct apds990x_chip {int lux_persistence; int arate; int prox_persistence; TYPE_1__* client; } ;
struct TYPE_2__ {int dev; } ;


 int APDS990X_APERS_SHIFT ;
 int APDS990X_PERS ;
 int APDS990X_PPERS_SHIFT ;
 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int apds990x_write_byte (struct apds990x_chip*,int ,int) ;
 int* apersis ;
 int* arates_hz ;
 scalar_t__ pm_runtime_suspended (int *) ;

__attribute__((used)) static int apds990x_set_arate(struct apds990x_chip *chip, int rate)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(arates_hz); i++)
  if (rate >= arates_hz[i])
   break;

 if (i == ARRAY_SIZE(arates_hz))
  return -EINVAL;


 chip->lux_persistence = apersis[i];
 chip->arate = arates_hz[i];


 if (pm_runtime_suspended(&chip->client->dev))
  return 0;


 return apds990x_write_byte(chip, APDS990X_PERS,
   (chip->lux_persistence << APDS990X_APERS_SHIFT) |
   (chip->prox_persistence << APDS990X_PPERS_SHIFT));
}
