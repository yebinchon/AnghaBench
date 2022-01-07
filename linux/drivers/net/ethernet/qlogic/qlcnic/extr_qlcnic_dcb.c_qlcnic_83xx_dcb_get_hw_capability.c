
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_dcb_capability {int dcb_capability; scalar_t__ ets_capability; scalar_t__ tsa_capability; } ;
struct qlcnic_dcb {int state; TYPE_1__* cfg; } ;
struct TYPE_2__ {struct qlcnic_dcb_capability capability; } ;


 int BIT_2 ;
 int BIT_3 ;
 int DCB_CAP_DCBX_LLD_MANAGED ;
 int DCB_CAP_DCBX_VER_CEE ;
 int DCB_CAP_DCBX_VER_IEEE ;
 int QLCNIC_DCB_STATE ;
 int __qlcnic_dcb_get_capability (struct qlcnic_dcb*,int*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_83xx_dcb_get_hw_capability(struct qlcnic_dcb *dcb)
{
 struct qlcnic_dcb_capability *cap = &dcb->cfg->capability;
 u32 mbx_out;
 int err;

 err = __qlcnic_dcb_get_capability(dcb, &mbx_out);
 if (err)
  return err;

 if (mbx_out & BIT_2)
  cap->dcb_capability = DCB_CAP_DCBX_VER_CEE;
 if (mbx_out & BIT_3)
  cap->dcb_capability |= DCB_CAP_DCBX_VER_IEEE;
 if (cap->dcb_capability)
  cap->dcb_capability |= DCB_CAP_DCBX_LLD_MANAGED;

 if (cap->dcb_capability && cap->tsa_capability && cap->ets_capability)
  set_bit(QLCNIC_DCB_STATE, &dcb->state);

 return err;
}
