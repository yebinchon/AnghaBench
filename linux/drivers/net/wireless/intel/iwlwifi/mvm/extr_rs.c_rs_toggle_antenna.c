
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
struct rs_rate {int ant; } ;


 int ANT_C ;
 scalar_t__ WARN_ON_ONCE (int) ;
 size_t* ant_toggle_lookup ;
 int rs_is_valid_ant (int ,size_t) ;

__attribute__((used)) static int rs_toggle_antenna(u32 valid_ant, struct rs_rate *rate)
{
 u8 new_ant_type;

 if (!rate->ant || WARN_ON_ONCE(rate->ant & ANT_C))
  return 0;

 if (!rs_is_valid_ant(valid_ant, rate->ant))
  return 0;

 new_ant_type = ant_toggle_lookup[rate->ant];

 while ((new_ant_type != rate->ant) &&
        !rs_is_valid_ant(valid_ant, new_ant_type))
  new_ant_type = ant_toggle_lookup[new_ant_type];

 if (new_ant_type == rate->ant)
  return 0;

 rate->ant = new_ant_type;

 return 1;
}
