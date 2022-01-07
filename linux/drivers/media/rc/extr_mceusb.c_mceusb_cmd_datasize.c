
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static int mceusb_cmd_datasize(u8 cmd, u8 subcmd)
{
 int datasize = 0;

 switch (cmd) {
 case 144:
  if (subcmd == 142)
   datasize = 1;
  break;
 case 142:
  switch (subcmd) {
  case 129:
   datasize = 5;
   break;
  case 130:
   datasize = 4;
   break;
  case 145:
   datasize = 2;
   break;
  case 131:
  case 128:
  case 139:
  case 138:
   datasize = 1;
   break;
  }
  break;
 case 143:
  switch (subcmd) {
  case 140:
  case 137:
  case 133:
  case 135:
  case 136:
   datasize = 2;
   break;
  case 141:
  case 132:
  case 134:
   datasize = 1;
   break;
  }
 }
 return datasize;
}
