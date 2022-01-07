
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;



__attribute__((used)) static bool xgbe_phy_sfp_verify_eeprom(u8 cc_in, u8 *buf, unsigned int len)
{
 u8 cc;

 for (cc = 0; len; buf++, len--)
  cc += *buf;

 return (cc == cc_in) ? 1 : 0;
}
