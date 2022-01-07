
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int FLEX10 ;
 int MC_NONE ;
 int QNQ_MODE ;
 int UMC ;
 int UMC_ENABLED ;
 int VNIC_MODE ;
 int vNIC1 ;
 int vNIC2 ;

__attribute__((used)) static u8 be_convert_mc_type(u32 function_mode)
{
 if (function_mode & VNIC_MODE && function_mode & QNQ_MODE)
  return vNIC1;
 else if (function_mode & QNQ_MODE)
  return FLEX10;
 else if (function_mode & VNIC_MODE)
  return vNIC2;
 else if (function_mode & UMC_ENABLED)
  return UMC;
 else
  return MC_NONE;
}
