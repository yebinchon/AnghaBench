
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int PCI_EXP_LNKSTA_CLS ;

__attribute__((used)) static const char *get_link_speed(u16 stat)
{
 switch (stat & PCI_EXP_LNKSTA_CLS) {
 case 1: return "2.5 Gbit/s";
 case 2: return "5 Gbit/s";
 case 3: return "10 Gbit/s";
 }
 return "Unknown speed";
}
