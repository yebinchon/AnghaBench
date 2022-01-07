
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;


 scalar_t__ CHIP_ID_YUKON_OP_2 ;
 scalar_t__ CHIP_ID_YUKON_XL ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static const char *sky2_name(u8 chipid, char *buf, int sz)
{
 const char *name[] = {
  "XL",
  "EC Ultra",
  "Extreme",
  "EC",
  "FE",
  "FE+",
  "Supreme",
  "UL 2",
  "Unknown",
  "Optima",
  "OptimaEEE",
  "Optima 2",
 };

 if (chipid >= CHIP_ID_YUKON_XL && chipid <= CHIP_ID_YUKON_OP_2)
  strncpy(buf, name[chipid - CHIP_ID_YUKON_XL], sz);
 else
  snprintf(buf, sz, "(chip %#x)", chipid);
 return buf;
}
