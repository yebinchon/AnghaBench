
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct __vxge_hw_vpath_handle {struct __vxge_hw_virtualpath* vpath; } ;
struct __vxge_hw_virtualpath {TYPE_1__* vp_reg; int * ringh; } ;
typedef enum vxge_hw_status { ____Placeholder_vxge_hw_status } vxge_hw_status ;
struct TYPE_2__ {int rxmac_vcfg0; } ;


 int VXGE_HW_ERR_INVALID_HANDLE ;
 int VXGE_HW_OK ;
 int VXGE_HW_RXMAC_VCFG0_BCAST_EN ;
 int readq (int *) ;
 int writeq (int,int *) ;

enum vxge_hw_status vxge_hw_vpath_bcast_enable(
   struct __vxge_hw_vpath_handle *vp)
{
 u64 val64;
 struct __vxge_hw_virtualpath *vpath;
 enum vxge_hw_status status = VXGE_HW_OK;

 if ((vp == ((void*)0)) || (vp->vpath->ringh == ((void*)0))) {
  status = VXGE_HW_ERR_INVALID_HANDLE;
  goto exit;
 }

 vpath = vp->vpath;

 val64 = readq(&vpath->vp_reg->rxmac_vcfg0);

 if (!(val64 & VXGE_HW_RXMAC_VCFG0_BCAST_EN)) {
  val64 |= VXGE_HW_RXMAC_VCFG0_BCAST_EN;
  writeq(val64, &vpath->vp_reg->rxmac_vcfg0);
 }
exit:
 return status;
}
