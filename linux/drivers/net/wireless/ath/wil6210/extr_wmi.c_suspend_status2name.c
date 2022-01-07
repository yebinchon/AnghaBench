
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;






__attribute__((used)) static const char *suspend_status2name(u8 status)
{
 switch (status) {
 case 129:
  return "LINK_NOT_IDLE";
 case 130:
  return "DISCONNECT";
 case 128:
  return "OTHER";
 default:
  return "Untracked status";
 }
}
