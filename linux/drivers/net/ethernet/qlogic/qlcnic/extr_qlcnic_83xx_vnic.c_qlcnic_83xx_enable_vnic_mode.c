
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int ahw; } ;


 int EBUSY ;
 int QLCNIC_DEV_NPAR_OPER ;
 int QLCWRX (int ,int ,int ) ;
 int QLC_83XX_VNIC_STATE ;
 scalar_t__ qlcnic_83xx_lock_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_unlock_driver (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_83xx_enable_vnic_mode(struct qlcnic_adapter *adapter, int lock)
{
 if (lock) {
  if (qlcnic_83xx_lock_driver(adapter))
   return -EBUSY;
 }
 QLCWRX(adapter->ahw, QLC_83XX_VNIC_STATE, QLCNIC_DEV_NPAR_OPER);
 if (lock)
  qlcnic_83xx_unlock_driver(adapter);

 return 0;
}
