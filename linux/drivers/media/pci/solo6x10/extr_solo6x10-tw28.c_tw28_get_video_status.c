
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {int dummy; } ;


 int TW286x_AV_STAT_ADDR ;
 int TW_AV_STAT_ADDR ;
 int tw_readbyte (struct solo_dev*,int,int ,int ) ;

int tw28_get_video_status(struct solo_dev *solo_dev, u8 ch)
{
 u8 val, chip_num;


 chip_num = ch / 4;
 ch %= 4;

 val = tw_readbyte(solo_dev, chip_num, TW286x_AV_STAT_ADDR,
     TW_AV_STAT_ADDR) & 0x0f;

 return val & (1 << ch) ? 1 : 0;
}
