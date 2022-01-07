
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx25821_dev {int * i2c_bus; } ;


 int OUT_CTRL1 ;
 int OUT_CTRL_NS ;


 int VDEC_B_OUT_CTRL1 ;
 int VDEC_B_OUT_CTRL_NS ;

 int VDEC_C_OUT_CTRL1 ;
 int VDEC_C_OUT_CTRL_NS ;

 int VDEC_D_OUT_CTRL1 ;
 int VDEC_D_OUT_CTRL_NS ;

 int VDEC_E_OUT_CTRL1 ;
 int VDEC_E_OUT_CTRL_NS ;

 int VDEC_F_OUT_CTRL1 ;
 int VDEC_F_OUT_CTRL_NS ;

 int VDEC_G_OUT_CTRL1 ;
 int VDEC_G_OUT_CTRL_NS ;

 int VDEC_H_OUT_CTRL1 ;
 int VDEC_H_OUT_CTRL_NS ;
 int cx25821_i2c_read (int *,int,int*) ;
 int cx25821_i2c_write (int *,int,int) ;

__attribute__((used)) static void medusa_enable_bluefield_output(struct cx25821_dev *dev, int channel,
        int enable)
{
 u32 value = 0;
 u32 tmp = 0;
 int out_ctrl = OUT_CTRL1;
 int out_ctrl_ns = OUT_CTRL_NS;

 switch (channel) {
 default:
 case 135:
  break;
 case 134:
  out_ctrl = VDEC_B_OUT_CTRL1;
  out_ctrl_ns = VDEC_B_OUT_CTRL_NS;
  break;
 case 133:
  out_ctrl = VDEC_C_OUT_CTRL1;
  out_ctrl_ns = VDEC_C_OUT_CTRL_NS;
  break;
 case 132:
  out_ctrl = VDEC_D_OUT_CTRL1;
  out_ctrl_ns = VDEC_D_OUT_CTRL_NS;
  break;
 case 131:
  out_ctrl = VDEC_E_OUT_CTRL1;
  out_ctrl_ns = VDEC_E_OUT_CTRL_NS;
  return;
 case 130:
  out_ctrl = VDEC_F_OUT_CTRL1;
  out_ctrl_ns = VDEC_F_OUT_CTRL_NS;
  return;
 case 129:
  out_ctrl = VDEC_G_OUT_CTRL1;
  out_ctrl_ns = VDEC_G_OUT_CTRL_NS;
  return;
 case 128:
  out_ctrl = VDEC_H_OUT_CTRL1;
  out_ctrl_ns = VDEC_H_OUT_CTRL_NS;
  return;
 }

 value = cx25821_i2c_read(&dev->i2c_bus[0], out_ctrl, &tmp);
 value &= 0xFFFFFF7F;
 if (enable)
  value |= 0x00000080;
 cx25821_i2c_write(&dev->i2c_bus[0], out_ctrl, value);

 value = cx25821_i2c_read(&dev->i2c_bus[0], out_ctrl_ns, &tmp);
 value &= 0xFFFFFF7F;
 if (enable)
  value |= 0x00000080;
 cx25821_i2c_write(&dev->i2c_bus[0], out_ctrl_ns, value);
}
