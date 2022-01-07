
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int QLC_DCB_GET_MAP (int) ;
 int QLC_DCB_MAX_TC ;

__attribute__((used)) static int qlcnic_dcb_prio_count(u8 up_tc_map)
{
 int j;

 for (j = 0; j < QLC_DCB_MAX_TC; j++)
  if (up_tc_map & QLC_DCB_GET_MAP(j))
   break;

 return j;
}
