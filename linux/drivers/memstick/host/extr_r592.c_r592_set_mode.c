
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r592_device {int parallel_mode; } ;


 int R592_IO ;
 int R592_IO_MODE ;
 int R592_IO_MODE_PARALLEL ;
 int R592_IO_MODE_SERIAL ;
 int R592_IO_SERIAL1 ;
 int R592_IO_SERIAL2 ;
 int R592_POWER ;
 int R592_POWER_20 ;
 int dbg (char*) ;
 int r592_clear_reg_mask (struct r592_device*,int ,int) ;
 int r592_set_reg_mask (struct r592_device*,int ,int) ;
 int r592_write_reg (struct r592_device*,int ,int ) ;

__attribute__((used)) static int r592_set_mode(struct r592_device *dev, bool parallel_mode)
{
 if (!parallel_mode) {
  dbg("switching to serial mode");


  r592_write_reg(dev, R592_IO_MODE, R592_IO_MODE_SERIAL);

  r592_clear_reg_mask(dev, R592_POWER, R592_POWER_20);

 } else {
  dbg("switching to parallel mode");


  r592_set_reg_mask(dev, R592_POWER, R592_POWER_20);

  r592_clear_reg_mask(dev, R592_IO,
   R592_IO_SERIAL1 | R592_IO_SERIAL2);


  r592_write_reg(dev, R592_IO_MODE, R592_IO_MODE_PARALLEL);
 }

 dev->parallel_mode = parallel_mode;
 return 0;
}
