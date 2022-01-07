
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct cx231xx {int dummy; } ;


 int TS1_PIN_CTL0 ;
 int TS1_PIN_CTL1 ;
 int vid_blk_read_byte (struct cx231xx*,int ,int*) ;
 int vid_blk_write_byte (struct cx231xx*,int ,int) ;

void cx231xx_enable656(struct cx231xx *dev)
{
 u8 temp = 0;


 vid_blk_write_byte(dev, TS1_PIN_CTL0, 0xFF);



 vid_blk_read_byte(dev, TS1_PIN_CTL1, &temp);
 temp = temp|0x04;

 vid_blk_write_byte(dev, TS1_PIN_CTL1, temp);
}
