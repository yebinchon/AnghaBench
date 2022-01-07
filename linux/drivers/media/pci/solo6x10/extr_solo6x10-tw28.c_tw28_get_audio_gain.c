
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct solo_dev {int dummy; } ;


 int TW286x_AUDIO_INPUT_GAIN_ADDR (int) ;
 int TW_AUDIO_INPUT_GAIN_ADDR (int) ;
 int tw_readbyte (struct solo_dev*,int,int ,int ) ;

u8 tw28_get_audio_gain(struct solo_dev *solo_dev, u8 ch)
{
 u8 val;
 u8 chip_num;


 chip_num = ch / 4;
 ch %= 4;

 val = tw_readbyte(solo_dev, chip_num,
     TW286x_AUDIO_INPUT_GAIN_ADDR(ch),
     TW_AUDIO_INPUT_GAIN_ADDR(ch));

 return (ch % 2) ? (val >> 4) : (val & 0x0f);
}
