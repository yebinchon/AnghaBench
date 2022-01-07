
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct rc_dev {struct nvt_dev* priv; } ;
struct nvt_dev {int dummy; } ;
typedef int carrier ;


 int CIR_CC ;
 int CIR_CP ;
 int EINVAL ;
 int nvt_cir_reg_read (struct nvt_dev*,int ) ;
 int nvt_cir_reg_write (struct nvt_dev*,int,int ) ;
 int nvt_dbg (char*,int ,int ) ;

__attribute__((used)) static int nvt_set_tx_carrier(struct rc_dev *dev, u32 carrier)
{
 struct nvt_dev *nvt = dev->priv;
 u16 val;

 if (carrier == 0)
  return -EINVAL;

 nvt_cir_reg_write(nvt, 1, CIR_CP);
 val = 3000000 / (carrier) - 1;
 nvt_cir_reg_write(nvt, val & 0xff, CIR_CC);

 nvt_dbg("cp: 0x%x cc: 0x%x\n",
  nvt_cir_reg_read(nvt, CIR_CP), nvt_cir_reg_read(nvt, CIR_CC));

 return 0;
}
