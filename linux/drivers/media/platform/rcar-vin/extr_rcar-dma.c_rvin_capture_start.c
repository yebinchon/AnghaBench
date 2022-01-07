
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvin_dev {int state; } ;


 int HW_BUFFER_NUM ;
 int STARTING ;
 int VNFC_C_FRAME ;
 int VNFC_REG ;
 int rvin_crop_scale_comp (struct rvin_dev*) ;
 int rvin_fill_hw_slot (struct rvin_dev*,int) ;
 int rvin_setup (struct rvin_dev*) ;
 int rvin_write (struct rvin_dev*,int ,int ) ;
 int vin_dbg (struct rvin_dev*,char*) ;

__attribute__((used)) static int rvin_capture_start(struct rvin_dev *vin)
{
 int slot, ret;

 for (slot = 0; slot < HW_BUFFER_NUM; slot++)
  rvin_fill_hw_slot(vin, slot);

 rvin_crop_scale_comp(vin);

 ret = rvin_setup(vin);
 if (ret)
  return ret;

 vin_dbg(vin, "Starting to capture\n");


 rvin_write(vin, VNFC_C_FRAME, VNFC_REG);

 vin->state = STARTING;

 return 0;
}
