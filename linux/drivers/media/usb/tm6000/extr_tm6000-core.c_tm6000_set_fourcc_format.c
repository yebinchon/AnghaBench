
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {scalar_t__ dev_type; scalar_t__ fourcc; } ;


 scalar_t__ TM6010 ;
 int TM6010_REQ07_RC1_TRESHOLD ;
 int TM6010_REQ07_RCC_ACTIVE_IF ;
 scalar_t__ V4L2_PIX_FMT_UYVY ;
 int tm6000_get_reg (struct tm6000_core*,int ,int ) ;
 int tm6000_set_reg (struct tm6000_core*,int ,int) ;

void tm6000_set_fourcc_format(struct tm6000_core *dev)
{
 if (dev->dev_type == TM6010) {
  int val;

  val = tm6000_get_reg(dev, TM6010_REQ07_RCC_ACTIVE_IF, 0) & 0xfc;
  if (dev->fourcc == V4L2_PIX_FMT_UYVY)
   tm6000_set_reg(dev, TM6010_REQ07_RCC_ACTIVE_IF, val);
  else
   tm6000_set_reg(dev, TM6010_REQ07_RCC_ACTIVE_IF, val | 1);
 } else {
  if (dev->fourcc == V4L2_PIX_FMT_UYVY)
   tm6000_set_reg(dev, TM6010_REQ07_RC1_TRESHOLD, 0xd0);
  else
   tm6000_set_reg(dev, TM6010_REQ07_RC1_TRESHOLD, 0x90);
 }
}
