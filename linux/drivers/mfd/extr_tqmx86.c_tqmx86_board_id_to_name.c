
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *tqmx86_board_id_to_name(u8 board_id)
{
 switch (board_id) {
 case 131:
  return "TQMxE38M";
 case 137:
  return "TQMx50UC";
 case 132:
  return "TQMxE38C";
 case 136:
  return "TQMx60EB";
 case 129:
  return "TQMxE39M";
 case 130:
  return "TQMxE39C";
 case 128:
  return "TQMxE39x";
 case 135:
  return "TQMx70EB";
 case 134:
  return "TQMx80UC";
 case 133:
  return "TQMx90UC";
 default:
  return "Unknown";
 }
}
