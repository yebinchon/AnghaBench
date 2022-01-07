
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tveeprom {int model; } ;
struct saa7134_dev {int name; } ;


 int pr_info (char*,int ,int) ;
 int pr_warn (char*,int ,int) ;
 int tveeprom_hauppauge_analog (struct tveeprom*,int *) ;

__attribute__((used)) static void hauppauge_eeprom(struct saa7134_dev *dev, u8 *eeprom_data)
{
 struct tveeprom tv;

 tveeprom_hauppauge_analog(&tv, eeprom_data);


 switch (tv.model) {
 case 67019:
 case 67109:
 case 67201:
 case 67301:
 case 67209:
 case 67559:
 case 67569:
 case 67579:
 case 67589:
 case 67599:
 case 67651:
 case 67659:
  break;
 default:
  pr_warn("%s: warning: unknown hauppauge model #%d\n",
   dev->name, tv.model);
  break;
 }

 pr_info("%s: hauppauge eeprom: model=%d\n",
        dev->name, tv.model);
}
