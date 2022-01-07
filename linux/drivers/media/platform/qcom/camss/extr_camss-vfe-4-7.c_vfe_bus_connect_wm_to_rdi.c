
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct vfe_device {int dummy; } ;
typedef enum vfe_line_id { ____Placeholder_vfe_line_id } vfe_line_id ;


 int VFE_0_BUS_XBAR_CFG_x (int) ;
 int VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT ;
 int VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0 ;
 int VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1 ;
 int VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2 ;
 int VFE_0_RDI_CFG_x (int) ;
 int VFE_0_RDI_CFG_x_MIPI_EN_BITS ;
 int VFE_0_RDI_CFG_x_RDI_EN_BIT ;
 int VFE_0_RDI_CFG_x_RDI_STREAM_SEL_MASK ;
 int VFE_0_RDI_CFG_x_RDI_STREAM_SEL_SHIFT ;



 int vfe_reg_set (struct vfe_device*,int ,int) ;

__attribute__((used)) static void vfe_bus_connect_wm_to_rdi(struct vfe_device *vfe, u8 wm,
          enum vfe_line_id id)
{
 u32 reg;

 reg = VFE_0_RDI_CFG_x_MIPI_EN_BITS;
 vfe_reg_set(vfe, VFE_0_RDI_CFG_x(0), reg);

 reg = VFE_0_RDI_CFG_x_RDI_EN_BIT;
 reg |= ((3 * id) << VFE_0_RDI_CFG_x_RDI_STREAM_SEL_SHIFT) &
  VFE_0_RDI_CFG_x_RDI_STREAM_SEL_MASK;
 vfe_reg_set(vfe, VFE_0_RDI_CFG_x(id), reg);

 switch (id) {
 case 130:
 default:
  reg = VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI0 <<
        VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT;
  break;
 case 129:
  reg = VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI1 <<
        VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT;
  break;
 case 128:
  reg = VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_VAL_RDI2 <<
        VFE_0_BUS_XBAR_CFG_x_M_SINGLE_STREAM_SEL_SHIFT;
  break;
 }

 if (wm % 2 == 1)
  reg <<= 16;

 vfe_reg_set(vfe, VFE_0_BUS_XBAR_CFG_x(wm), reg);
}
