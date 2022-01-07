
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
typedef int u32 ;
 int QLCNIC_82XX_BAR0_LENGTH ;
 int QLCNIC_83XX_BAR0_LENGTH ;

__attribute__((used)) static void qlcnic_get_bar_length(u32 dev_id, ulong *bar)
{
 switch (dev_id) {
 case 134:
  *bar = QLCNIC_82XX_BAR0_LENGTH;
  break;
 case 133:
 case 131:
 case 132:
 case 130:
 case 129:
 case 128:
  *bar = QLCNIC_83XX_BAR0_LENGTH;
  break;
 default:
  *bar = 0;
 }
}
