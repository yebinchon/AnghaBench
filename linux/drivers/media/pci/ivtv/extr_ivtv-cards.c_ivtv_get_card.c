
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ivtv_card {int dummy; } ;


 size_t ARRAY_SIZE (struct ivtv_card const**) ;
 struct ivtv_card const** ivtv_card_list ;

const struct ivtv_card *ivtv_get_card(u16 index)
{
 if (index >= ARRAY_SIZE(ivtv_card_list))
  return ((void*)0);
 return ivtv_card_list[index];
}
