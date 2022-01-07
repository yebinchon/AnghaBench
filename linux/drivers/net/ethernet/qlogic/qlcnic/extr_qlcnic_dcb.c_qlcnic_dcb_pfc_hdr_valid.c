
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct qlcnic_adapter {int dummy; } ;


 int QLC_82XX_DCB_PFC_VALID (int ) ;
 int QLC_83XX_DCB_PFC_VALID (int ) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static inline u8 qlcnic_dcb_pfc_hdr_valid(struct qlcnic_adapter *adapter,
       u32 val)
{
 if (qlcnic_82xx_check(adapter))
  return QLC_82XX_DCB_PFC_VALID(val);
 else
  return QLC_83XX_DCB_PFC_VALID(val);
}
