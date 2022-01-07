
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 scalar_t__ CF8305_CARDID ;
 scalar_t__ CF8305_MANFID ;
 scalar_t__ CF8381_CARDID ;
 scalar_t__ CF8381_MANFID ;
 scalar_t__ CF8385_CARDID ;
 scalar_t__ CF8385_MANFID ;
 int MODEL_8305 ;
 int MODEL_8381 ;
 int MODEL_8385 ;
 int MODEL_UNKNOWN ;

__attribute__((used)) static inline u32 get_model(u16 manf_id, u16 card_id)
{

 if (manf_id == CF8305_MANFID && card_id == CF8305_CARDID)
  return MODEL_8305;
 else if (manf_id == CF8381_MANFID && card_id == CF8381_CARDID)
  return MODEL_8381;
 else if (manf_id == CF8385_MANFID && card_id == CF8385_CARDID)
  return MODEL_8385;
 return MODEL_UNKNOWN;
}
