
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ is_power_of_2 (scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;
 scalar_t__ roundup_pow_of_two (scalar_t__) ;

__attribute__((used)) static u16
ath5k_cw_validate(u16 cw_req)
{
 cw_req = min(cw_req, (u16)1023);


 if (is_power_of_2(cw_req + 1))
  return cw_req;


 if (is_power_of_2(cw_req))
  return cw_req - 1;



 cw_req = (u16) roundup_pow_of_two(cw_req) - 1;

 return cw_req;
}
