
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum roce_mode { ____Placeholder_roce_mode } roce_mode ;
typedef enum roce_flavor { ____Placeholder_roce_flavor } roce_flavor ;


 int MAX_ROCE_FLAVOR ;
 int PLAIN_ROCE ;



 int RROCE_IPV4 ;
 int RROCE_IPV6 ;

__attribute__((used)) static enum roce_flavor qed_roce_mode_to_flavor(enum roce_mode roce_mode)
{
 switch (roce_mode) {
 case 130:
  return PLAIN_ROCE;
 case 129:
  return RROCE_IPV4;
 case 128:
  return RROCE_IPV6;
 default:
  return MAX_ROCE_FLAVOR;
 }
}
