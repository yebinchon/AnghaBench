
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct qlcnic_adapter {int ahw; } ;


 int EBUSY ;
 int QLCRDX (int ,int ) ;
 int QLCWRX (int ,int ,int) ;
 int QLC_83XX_IDC_MAJOR_VERSION ;
 int QLC_83XX_IDC_MAJ_VERSION ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_idc_update_major_version(struct qlcnic_adapter *adapter,
      int lock)
{
 u32 val;

 if (lock) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;
 }

 val = QLCRDX(adapter->ahw, QLC_83XX_IDC_MAJ_VERSION);
 val = val & ~0xFF;
 val = val | QLC_83XX_IDC_MAJOR_VERSION;
 QLCWRX(adapter->ahw, QLC_83XX_IDC_MAJ_VERSION, val);

 if (lock)
  qlcnic_83xx_unlock_driver(adapter);

 return 0;
}
