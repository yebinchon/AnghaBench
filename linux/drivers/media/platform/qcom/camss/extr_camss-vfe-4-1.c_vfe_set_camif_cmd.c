
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct vfe_device {scalar_t__ base; } ;


 scalar_t__ VFE_0_CAMIF_CMD ;
 int VFE_0_CAMIF_CMD_CLEAR_CAMIF_STATUS ;
 int VFE_0_CAMIF_CMD_DISABLE_FRAME_BOUNDARY ;
 int VFE_0_CAMIF_CMD_ENABLE_FRAME_BOUNDARY ;
 int VFE_0_CAMIF_CMD_NO_CHANGE ;
 int wmb () ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static void vfe_set_camif_cmd(struct vfe_device *vfe, u8 enable)
{
 u32 cmd;

 cmd = VFE_0_CAMIF_CMD_CLEAR_CAMIF_STATUS | VFE_0_CAMIF_CMD_NO_CHANGE;
 writel_relaxed(cmd, vfe->base + VFE_0_CAMIF_CMD);
 wmb();

 if (enable)
  cmd = VFE_0_CAMIF_CMD_ENABLE_FRAME_BOUNDARY;
 else
  cmd = VFE_0_CAMIF_CMD_DISABLE_FRAME_BOUNDARY;

 writel_relaxed(cmd, vfe->base + VFE_0_CAMIF_CMD);
}
