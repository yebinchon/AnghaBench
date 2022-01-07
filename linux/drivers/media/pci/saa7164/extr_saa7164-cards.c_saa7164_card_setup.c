
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct saa7164_dev {int board; TYPE_1__* i2c_bus; } ;
typedef int eeprom ;
struct TYPE_2__ {scalar_t__ i2c_rc; } ;
 int hauppauge_eeprom (struct saa7164_dev*,int *) ;
 scalar_t__ saa7164_api_read_eeprom (struct saa7164_dev*,int *,int) ;

void saa7164_card_setup(struct saa7164_dev *dev)
{
 static u8 eeprom[256];

 if (dev->i2c_bus[0].i2c_rc == 0) {
  if (saa7164_api_read_eeprom(dev, &eeprom[0],
   sizeof(eeprom)) < 0)
   return;
 }

 switch (dev->board) {
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 132:
 case 131:
 case 130:
 case 128:
 case 129:
 case 133:
  hauppauge_eeprom(dev, &eeprom[0]);
  break;
 }
}
