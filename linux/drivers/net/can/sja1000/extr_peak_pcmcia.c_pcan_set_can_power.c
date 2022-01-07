
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcan_pccard {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*,char*,int) ;
 int pcan_write_eeprom (struct pcan_pccard*,int ,int) ;

__attribute__((used)) static inline void pcan_set_can_power(struct pcan_pccard *card, int onoff)
{
 int err;

 err = pcan_write_eeprom(card, 0, !!onoff);
 if (err)
  dev_err(&card->pdev->dev,
   "failed setting power %s to can connectors (err %d)\n",
   (onoff) ? "on" : "off", err);
}
