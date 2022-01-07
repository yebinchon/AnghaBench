
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;


 size_t ARRAY_SIZE (size_t*) ;
 size_t IEEE80211_AC_BE ;
 size_t* fifo_to_ac_mapping ;

__attribute__((used)) static u8 brcms_fifo_to_ac(u8 fifo)
{
 if (fifo >= ARRAY_SIZE(fifo_to_ac_mapping))
  return IEEE80211_AC_BE;
 return fifo_to_ac_mapping[fifo];
}
