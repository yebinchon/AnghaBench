
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int16_t ;
typedef enum ath5k_srev_type { ____Placeholder_ath5k_srev_type } ath5k_srev_type ;
struct TYPE_3__ {int sr_type; int sr_val; char* sr_name; } ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* srev_names ;

const char *
ath5k_chip_name(enum ath5k_srev_type type, u_int16_t val)
{
 const char *name = "xxxxx";
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(srev_names); i++) {
  if (srev_names[i].sr_type != type)
   continue;

  if ((val & 0xf0) == srev_names[i].sr_val)
   name = srev_names[i].sr_name;

  if ((val & 0xff) == srev_names[i].sr_val) {
   name = srev_names[i].sr_name;
   break;
  }
 }

 return name;
}
