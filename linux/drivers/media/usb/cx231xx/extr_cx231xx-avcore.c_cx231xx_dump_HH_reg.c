
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct cx231xx {int dev; } ;


 int AFE_CTRL_C2HH_SRC_CTRL ;
 int dev_dbg (int ,char*,int,...) ;
 int vid_blk_read_word (struct cx231xx*,int,int*) ;
 int vid_blk_write_word (struct cx231xx*,int,int) ;

void cx231xx_dump_HH_reg(struct cx231xx *dev)
{
 u32 value = 0;
 u16 i = 0;

 value = 0x45005390;
 vid_blk_write_word(dev, 0x104, value);

 for (i = 0x100; i < 0x140; i++) {
  vid_blk_read_word(dev, i, &value);
  dev_dbg(dev->dev, "reg0x%x=0x%x\n", i, value);
  i = i+3;
 }

 for (i = 0x300; i < 0x400; i++) {
  vid_blk_read_word(dev, i, &value);
  dev_dbg(dev->dev, "reg0x%x=0x%x\n", i, value);
  i = i+3;
 }

 for (i = 0x400; i < 0x440; i++) {
  vid_blk_read_word(dev, i, &value);
  dev_dbg(dev->dev, "reg0x%x=0x%x\n", i, value);
  i = i+3;
 }

 vid_blk_read_word(dev, AFE_CTRL_C2HH_SRC_CTRL, &value);
 dev_dbg(dev->dev, "AFE_CTRL_C2HH_SRC_CTRL=0x%x\n", value);
 vid_blk_write_word(dev, AFE_CTRL_C2HH_SRC_CTRL, 0x4485D390);
 vid_blk_read_word(dev, AFE_CTRL_C2HH_SRC_CTRL, &value);
 dev_dbg(dev->dev, "AFE_CTRL_C2HH_SRC_CTRL=0x%x\n", value);
}
