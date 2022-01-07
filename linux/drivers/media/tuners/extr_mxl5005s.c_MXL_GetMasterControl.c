
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;



__attribute__((used)) static u16 MXL_GetMasterControl(u8 *MasterReg, int state)
{
 if (state == 1)
  *MasterReg = 0xF3;
 if (state == 2)
  *MasterReg = 0x41;
 if (state == 3)
  *MasterReg = 0xB1;
 if (state == 4)
  *MasterReg = 0xF1;

 return 0;
}
