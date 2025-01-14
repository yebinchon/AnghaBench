
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_dcb_info {scalar_t__ dcb_version; int supported; } ;


 int DCB_CAP_DCBX_VER_CEE ;
 int DCB_CAP_DCBX_VER_IEEE ;
 scalar_t__ FW_PORT_DCB_VER_CEE1D01 ;
 scalar_t__ FW_PORT_DCB_VER_IEEE ;

__attribute__((used)) static inline void cxgb4_dcb_update_support(struct port_dcb_info *dcb)
{
 if (dcb->dcb_version == FW_PORT_DCB_VER_IEEE) {
  if (dcb->supported & DCB_CAP_DCBX_VER_CEE)
   dcb->supported &= ~DCB_CAP_DCBX_VER_CEE;
  dcb->supported |= DCB_CAP_DCBX_VER_IEEE;
 } else if (dcb->dcb_version == FW_PORT_DCB_VER_CEE1D01) {
  if (dcb->supported & DCB_CAP_DCBX_VER_IEEE)
   dcb->supported &= ~DCB_CAP_DCBX_VER_IEEE;
  dcb->supported |= DCB_CAP_DCBX_VER_CEE;
 }
}
