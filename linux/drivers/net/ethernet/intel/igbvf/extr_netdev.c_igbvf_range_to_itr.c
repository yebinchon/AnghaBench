
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum latency_range { ____Placeholder_latency_range } latency_range ;


 int IGBVF_20K_ITR ;
 int IGBVF_4K_ITR ;
 int IGBVF_70K_ITR ;
 int IGBVF_START_ITR ;




__attribute__((used)) static int igbvf_range_to_itr(enum latency_range current_range)
{
 int new_itr;

 switch (current_range) {

 case 128:
  new_itr = IGBVF_70K_ITR;
  break;
 case 129:
  new_itr = IGBVF_20K_ITR;
  break;
 case 130:
  new_itr = IGBVF_4K_ITR;
  break;
 default:
  new_itr = IGBVF_START_ITR;
  break;
 }
 return new_itr;
}
