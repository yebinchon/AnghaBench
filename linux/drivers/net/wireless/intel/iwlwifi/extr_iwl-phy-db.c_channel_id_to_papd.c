
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 scalar_t__ WARN_ON (int) ;
 int is_valid_channel (int) ;

__attribute__((used)) static u16 channel_id_to_papd(u16 ch_id)
{
 if (WARN_ON(!is_valid_channel(ch_id)))
  return 0xff;

 if (1 <= ch_id && ch_id <= 14)
  return 0;
 if (36 <= ch_id && ch_id <= 64)
  return 1;
 if (100 <= ch_id && ch_id <= 140)
  return 2;
 return 3;
}
