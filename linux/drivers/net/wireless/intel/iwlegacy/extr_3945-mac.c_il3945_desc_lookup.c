
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
il3945_desc_lookup(int i)
{
 switch (i) {
 case 1:
  return "FAIL";
 case 2:
  return "BAD_PARAM";
 case 3:
  return "BAD_CHECKSUM";
 case 4:
  return "NMI_INTERRUPT";
 case 5:
  return "SYSASSERT";
 case 6:
  return "FATAL_ERROR";
 }

 return "UNKNOWN";
}
