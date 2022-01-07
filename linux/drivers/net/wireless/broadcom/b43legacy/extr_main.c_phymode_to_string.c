
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int B43legacy_BUG_ON (int) ;



__attribute__((used)) static const char *phymode_to_string(unsigned int phymode)
{
 switch (phymode) {
 case 129:
  return "B";
 case 128:
  return "G";
 default:
  B43legacy_BUG_ON(1);
 }
 return "";
}
