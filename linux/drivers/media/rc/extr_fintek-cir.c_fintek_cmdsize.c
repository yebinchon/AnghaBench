
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BUF_CMD_G_REVISION ;
__attribute__((used)) static int fintek_cmdsize(u8 cmd, u8 subcmd)
{
 int datasize = 0;

 switch (cmd) {
 case 130:
  if (subcmd == 129)
   datasize = 1;
  break;
 case 129:
  if (subcmd == BUF_CMD_G_REVISION)
   datasize = 2;
  break;
 case 131:
  switch (subcmd) {
  case 135:
  case 133:
  case 128:
   datasize = 2;
   break;
  case 136:
  case 132:
  case 134:
   datasize = 1;
   break;
  }
 }

 return datasize;
}
