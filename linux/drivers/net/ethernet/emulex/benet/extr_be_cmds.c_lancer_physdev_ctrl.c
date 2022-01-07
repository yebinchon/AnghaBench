
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct be_adapter {scalar_t__ db; } ;


 scalar_t__ PHYSDEV_CONTROL_OFFSET ;
 int iowrite32 (int ,scalar_t__) ;
 int lancer_wait_idle (struct be_adapter*) ;

int lancer_physdev_ctrl(struct be_adapter *adapter, u32 mask)
{
 int status = 0;

 status = lancer_wait_idle(adapter);
 if (status)
  return status;

 iowrite32(mask, adapter->db + PHYSDEV_CONTROL_OFFSET);

 return status;
}
