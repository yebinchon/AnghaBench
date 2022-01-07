
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static char *wil_bfstatus_str(u32 status)
{
 switch (status) {
 case 0:
  return "Failed";
 case 1:
  return "OK";
 case 2:
  return "Retrying";
 default:
  return "??";
 }
}
