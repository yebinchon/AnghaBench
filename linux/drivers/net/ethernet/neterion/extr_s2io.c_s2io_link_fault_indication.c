
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s2io_nic {scalar_t__ device_type; } ;


 int LINK_UP_DOWN_INTERRUPT ;
 int MAC_RMAC_ERR_TIMER ;
 scalar_t__ XFRAME_II_DEVICE ;

__attribute__((used)) static int s2io_link_fault_indication(struct s2io_nic *nic)
{
 if (nic->device_type == XFRAME_II_DEVICE)
  return LINK_UP_DOWN_INTERRUPT;
 else
  return MAC_RMAC_ERR_TIMER;
}
